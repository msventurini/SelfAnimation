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

        replicator.anchorPoint = .init(x: 0.5, y: 0.5)
        
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, selfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.masksToBounds = false
        replicator.replicatorLayer.preservesDepth = true
        let newSize = AVMakeRect(aspectRatio: selfShape.ogFrame.size, insideRect: replicator.bounds)
        shapeLayer.path = SelfShape.path(emotion: selfShape, rect: newSize)
        shapeLayer.frame = newSize
        
        replicator.replicatorLayer.addSublayer(shapeLayer)
        
        replicator.replicatorLayer.instanceCount = 30
        let newTransform = selfShape.transform
        replicator.replicatorLayer.instanceTransform = newTransform
        replicator.replicatorLayer.instanceDelay = selfShape.instanceDelay
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



#Preview {
    
//    NavigationStack {
//        List(SelfShape.allCases) { shape in
//            
//            GroupBox {
//                
//                NavigationLink {
    DetailViewHome(shape: .anxiety)
//                } label: {
//                    Text(shape.rawValue)
//                }
//                
//            }
//            
//        }
//    }

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


