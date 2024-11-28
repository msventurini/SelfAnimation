//
//  SelfShapeSelectionView.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import UIKit
import SwiftUI
import AVFoundation
import UIKit
import SwiftUI

public class SelfShapeSelectionView: UIView {
    
    public override var intrinsicContentSize: CGSize {
        return .init(width: 200, height: 200)
    }
    
    var selfShape: SelfShape
    var weight: ShapeWeight
    
    public init(selfShape: SelfShape, weight: ShapeWeight) {
        self.selfShape = selfShape
        self.weight = weight
        
        super.init(frame: .init(x: 0, y: 0, width: 200, height: 200))
        
        let replicator = SelfReplicatorview(emotion: selfShape, frame: .init(x: 0, y: 0, width: 200, height: 200))
        
        addSubview(replicator)
        
        replicator.center = .init(x: frame.midX, y: frame.midY)

        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, selfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.masksToBounds = false
        
        
        let newSize = AVMakeRect(aspectRatio: selfShape.ogFrame.size, insideRect: replicator.bounds)//.offsetBy(dx: 125, dy: 125)

//        path.addPath(UIBezierPath(emotionShape: selfShape, in: newSize).cgPath)
        shapeLayer.path = SelfShape.path(emotion: selfShape, rect: newSize)//braveryShape(rect: newSize)
        shapeLayer.frame = newSize
        
        replicator.replicatorLayer.addSublayer(shapeLayer)
        
        replicator.replicatorLayer.instanceCount = 10
        let newTransform = selfShape.transform
        replicator.replicatorLayer.instanceTransform = newTransform
        replicator.replicatorLayer.drawsAsynchronously = true
        
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 3
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

public struct ShapeSelectionRepresentable: UIViewRepresentable {
    
    let shape: SelfShape
    let weight: ShapeWeight
    
    public init(shape: SelfShape, weight: ShapeWeight) {
        self.shape = shape
        self.weight = weight
    }
    
    public func makeUIView(context: Context) -> SelfShapeSelectionView {
        let view = SelfShapeSelectionView(selfShape: shape, weight: weight)
        return view
    }
    
    public func updateUIView(_ uiView: SelfShapeSelectionView, context: Context) {
        
    }
    
    public typealias UIViewType = SelfShapeSelectionView
    
    public func sizeThatFits(_ proposal: ProposedViewSize, uiView: SelfShapeSelectionView, context: Context) -> CGSize? {
        return uiView.intrinsicContentSize
    }
    
}

#Preview {
    DetailView(shape: .anxiety)
//    NavigationStack {
//        List(SelfShape.allCases) { shape in
//            
//            GroupBox {
//                
//                NavigationLink {
//                    DetailView(shape: shape)
//                } label: {
//                    Text(shape.rawValue)
//                }
//                
//            }
//            
//        }
//    }

}

public struct DetailView: View {
    
    let shape: SelfShape
    
    public var body: some View {
        
        VStack {
            ShapeSelectionRepresentable(shape: shape, weight: .light)
                .fixedSize()
            ShapeSelectionRepresentable(shape: shape, weight: .dark)
                .fixedSize()
        }
        
    }
}
