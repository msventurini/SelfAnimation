//
//  SelfShapeHomeView.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import UIKit
import SwiftUI
import AVFoundation
import UIKit
import SwiftUI

public class SelfShapeHomeView: UIView {
    
    public override var intrinsicContentSize: CGSize {
        return .init(width: 250, height: 250)
    }
    
    var selfShape: SelfShape
    var weight: ShapeWeight
    
    public init(selfShape: SelfShape, weight: ShapeWeight) {
        self.selfShape = selfShape
        self.weight = weight
        
        super.init(frame: .init(x: 0, y: 0, width: 250, height: 250))
        
        let replicator = SelfReplicatorview(emotion: selfShape, frame: .init(x: 0, y: 0, width: 250, height: 250))
        
        addSubview(replicator)
        
        replicator.center = .init(x: frame.midX, y: frame.midY)

        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, SelfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.masksToBounds = false
        
        
        let newSize = AVMakeRect(aspectRatio: selfShape.frame.size, insideRect: replicator.bounds)//.offsetBy(dx: 125, dy: 125)

//        path.addPath(UIBezierPath(emotionShape: selfShape, in: newSize).cgPath)
        shapeLayer.path = SelfShape.braveryShape(rect: newSize)
        shapeLayer.frame = newSize
        
        replicator.replicatorLayer.addSublayer(shapeLayer)
        
        replicator.replicatorLayer.instanceCount = 30
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

public struct ShapeHomeRepresentable: UIViewRepresentable {
    
    let shape: SelfShape
    let weight: ShapeWeight
    
    public func makeUIView(context: Context) -> SelfShapeHomeView {
        let view = SelfShapeHomeView(selfShape: shape, weight: weight)
        return view
    }
    
    public func updateUIView(_ uiView: SelfShapeHomeView, context: Context) {
        
    }
    
    public typealias UIViewType = SelfShapeHomeView
    
    public func sizeThatFits(_ proposal: ProposedViewSize, uiView: SelfShapeHomeView, context: Context) -> CGSize? {
        return uiView.intrinsicContentSize
    }
    
}

#Preview {
    
    NavigationStack {
        List(SelfShape.allCases) { shape in
            
            GroupBox {
                
                NavigationLink {
                    DetailViewHome(shape: shape)
                } label: {
                    Text(shape.rawValue)
                }
                
            }
            
        }
    }

}

public struct DetailViewHome: View {
    
    let shape: SelfShape
    
    public var body: some View {
        
        VStack {
            ShapeHomeRepresentable(shape: shape, weight: .light)
                .fixedSize()
            ShapeHomeRepresentable(shape: shape, weight: .dark)
                .fixedSize()
        }
        
    }
}


