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
    
    let replicator: SelfReplicatorview

    let shapeLayer = CAShapeLayer()

    
    public init(selfShape: SelfShape, weight: ShapeWeight) {
        self.selfShape = selfShape
        self.weight = weight
        replicator = SelfReplicatorview(emotion: selfShape, frame: .init(x: 0, y: 0, width: 250, height: 250))
        super.init(frame: .init(x: 0, y: 0, width: 250, height: 250))
        
        
        addSubview(replicator)
        
        replicator.center = .init(x: frame.midX, y: frame.midY)

        replicator.anchorPoint = .init(x: 0.5, y: 0.5)
        
        
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
        
        
//        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
//        lineDashAnimation.fromValue = 0
//        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
//        lineDashAnimation.duration = 3
//        lineDashAnimation.fillMode = .removed
//        lineDashAnimation.speed = Float(1 * selfShape.direction)
//        
//        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
//        
//        shapeLayer.add(lineDashAnimation, forKey: nil)
//
//        replicatorPt1()
        lineDashAnimation()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func lineDashAnimation() {

//
        shapeLayer.lineJoin = .miter
        
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 3
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = Float(1 * selfShape.direction)
    
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
        
        
    }
    
    func replicatorPt1() {
        
        shapeLayer.strokeColor = UIColor.clear.cgColor

        let r = CAReplicatorLayer()
        r.bounds = CGRect(x: 0.0, y: 0.0, width: 250, height: 250)
        r.cornerRadius = 0.0
        r.position = center
        r.instanceAlphaOffset = 0
        r.instanceCount = 30
        r.instanceDelay = 0.1
        r.instanceAlphaOffset = 0.1
        r.repeatCount = Float.infinity
        
        replicator.replicatorLayer.addSublayer(r)
        
        let dot = CALayer()
        dot.bounds = .init(x: 0, y: 0, width: 10, height: 10)
        dot.position = center
        
        
        dot.backgroundColor = UIColor(white: 0, alpha: 1.0).cgColor
        dot.borderColor = UIColor(white: 1.0, alpha: 1.0).cgColor
        dot.rasterizationScale = 2
        dot.shouldRasterize = true
        dot.borderWidth = 1.5
        dot.cornerRadius = 5.0
        dot.shouldRasterize = true

        r.addSublayer(dot)
        
        let move = CAKeyframeAnimation(keyPath: "position")
        move.path = shapeLayer.path
        move.repeatCount = Float.infinity
        move.duration = 5.0
        dot.add(move, forKey: nil)
    }
//    
    
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
            ShapeHomeRepresentable(shape: .panic, weight: .light)
                .fixedSize()
            ShapeHomeRepresentable(shape: .panic, weight: .dark)
                .fixedSize()
        }
        
    }
}


