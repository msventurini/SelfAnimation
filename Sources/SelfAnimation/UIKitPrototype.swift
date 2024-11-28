//
//  CALayerTesting.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//

import UIKit
import SwiftUI
import AVFoundation

public class CALayerTesting: UIViewController {
    
    var selfShape: SelfShape
    var weight: ShapeWeight
    
    let isAsyncRendered: Bool
    
    
    
    public init(shape: SelfShape, weight: ShapeWeight = .light,isAsyncRendered: Bool) {
        
        self.selfShape = shape
        self.weight = weight
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
        
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, SelfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        let path = CGMutablePath()
        path.addPath(UIBezierPath(emotionShape: selfShape,in: testeLayer.frame).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = uit.bounds
        
        testeLayer.addSublayer(shapeLayer)
        let replicated = getReplicatorLayer(inputLayer: testeLayer, numberOfLayers: 30)
        replicated.frame = testeLayer.bounds
        uit.layer.addSublayer(replicated)
        view.addSubview(uit)
        
        replicated.drawsAsynchronously = true
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 3
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
        replicatorLayer.drawsAsynchronously = isAsyncRendered

        return replicatorLayer
    }
}



extension UIBezierPath {
    
    convenience init(emotionShape: SelfShape,in rect: CGRect) {
        
        
        let path = SelfShape.path(emotion: emotionShape, rect: rect)
        
        self.init(cgPath: path)
        
    }

}






import UIKit
import SwiftUI
    

public enum ShapeWeight {
case light
case dark
}








class SelfReplicatorview: UIView
{
    
    override var intrinsicContentSize: CGSize {
        return .init(width: 250, height: 250)
    }

    init(emotion: SelfShape) {
        
        super.init(frame: .zero)

        self.layer.delegate = self

        setNeedsLayout()

    }

    init(emotion: SelfShape, frame: CGRect) {
        
        super.init(frame: frame)
        setNeedsLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override static var layerClass:AnyClass {
        return CAReplicatorLayer.self
    }

    var replicatorLayer:CAReplicatorLayer {
        return self.layer as! CAReplicatorLayer
    }



    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        print("a")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        
        
    }


}

enum KindOfSuperview {
    case homeScreen
    case emotionSelection
}






#Preview {
    let test = SelfShapeHomeView(selfShape: .bravery, weight: .dark)
    return test
}
