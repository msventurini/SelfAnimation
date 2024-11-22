//
//  CALayerTesting.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//

import UIKit
import SwiftUI

public class CALayerTesting: UIViewController {
    
    var selfShape: SelfShape = .surprise
    
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {

        super.viewDidLoad()
        
        let uit = UIView(frame: .init(x: 0, y: 0, width: selfShape.frame.width, height: selfShape.frame.height))
                let testeLayer = CALayer()
        
        uit.center = view.center

        testeLayer.frame = uit.bounds

        let shapeLayer = CAShapeLayer()

        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = selfShape.lineWidth
        shapeLayer.lineDashPattern = [0.01, selfShape.lineDashSpacing]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
             
        let path = CGMutablePath()
        path.addPath(UIBezierPath(emotionShapeIn: testeLayer.frame).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = uit.bounds
        
        shapeLayer.frame = uit.bounds

        testeLayer.addSublayer(shapeLayer)
        let replicated = getReplicatorLayer(inputLayer: testeLayer, numberOfLayers: 30)

        replicated.frame = testeLayer.bounds
        uit.layer.addSublayer(replicated)
        view.addSubview(uit)
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 5
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
    }
    
    func getReplicatorLayer(inputLayer: CALayer,numberOfLayers: Int) -> CAReplicatorLayer {
        
        let replicatorLayer = CAReplicatorLayer()
        let numberOfInstances: Int = numberOfLayers
        
        replicatorLayer.instanceCount = numberOfInstances
         
        let newTransform = selfShape.transform


        replicatorLayer.instanceTransform = newTransform
        replicatorLayer.addSublayer(inputLayer)
        return replicatorLayer
    }
}

#Preview {
    CALayerTesting()
}



extension UIBezierPath {
    
    convenience init(emotionShapeIn rect: CGRect) {

    
        let path = SelfShape.path(emotion: .surprise, rect: rect)

        self.init(cgPath: path)
        
    }
}
