//
//  CALayerTesting.swift
//  EmotionAssets
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit

public class CALayerTesting: UIViewController {
    
    var selfShape: EmotionShapeAttributes = BraveryAttributes(weightType: .Light, currentFrame: .init(x: 0, y: 0, width: 636, height: 906))
    
    let isAsyncRendered: Bool
    
    
    
    public init(isAsyncRendered: Bool) {
        
        self.isAsyncRendered = isAsyncRendered
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let uit = UIView(frame: selfShape.frame)
        let testeLayer = CALayer()
        
        uit.center = view.center
        
        testeLayer.frame = uit.bounds
        
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = selfShape.lineWidth
        shapeLayer.lineDashPattern = [0.0, selfShape.ogLineDashSpacing]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        let path = CGMutablePath()
        path.addPath(UIBezierPath(emotionShape: selfShape,in: testeLayer.frame).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = uit.bounds
        
        testeLayer.addSublayer(shapeLayer)
        let replicated = getReplicatorLayer(inputLayer: testeLayer, numberOfLayers: 30)
        replicated.drawsAsynchronously = isAsyncRendered
        replicated.frame = testeLayer.bounds
        uit.layer.addSublayer(replicated)
        view.addSubview(uit)
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.ogLineDashSpacing.intValue }
        lineDashAnimation.duration = 2
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
        
        replicatorLayer.sublayerTransform = selfShape.transform
        
        replicatorLayer.instanceTransform = newTransform
        replicatorLayer.addSublayer(inputLayer)
        return replicatorLayer
    }
}



extension UIBezierPath {
    
    convenience init(emotionShape: EmotionShapeAttributes, in rect: CGRect) {
        
        
        let path = emotionShape.getPath(in: rect, for: emotionShape.weightType)
        
        self.init(cgPath: path)
        
    }

}



#Preview {
    let test = CALayerTesting(isAsyncRendered: true)
    return test
}
