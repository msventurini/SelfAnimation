//
//  CALayerTesting.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//

import UIKit
import SwiftUI

class CALayerTesting: UIViewController {
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
                let uit = UIView(frame: .init(x: view.center.x - 100, y: view.center.y - 100, width: 225, height: 453))
                let testeLayer = CALayer()

        testeLayer.frame = uit.bounds

        let shapeLayer = CAShapeLayer()

        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = 3.25
//        shapeLayer.lineWidth = 4.0
        shapeLayer.lineDashPattern = [0.01, 8]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
             
        let path = CGMutablePath()
        path.addPath(UIBezierPath(emotionShapeIn: testeLayer.frame).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = uit.bounds
        
        shapeLayer.frame = uit.bounds

        testeLayer.addSublayer(shapeLayer)
        let replicated = cubeTopFace(inputLayer: testeLayer, numberOfLayers: 30)

        replicated.frame = testeLayer.bounds
        uit.layer.addSublayer(replicated)
        view.addSubview(uit)
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + 100 }
        lineDashAnimation.duration = 5
        lineDashAnimation.fillMode = .backwards
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
             
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
    }
    
    func cubeTopFace(inputLayer: CALayer,numberOfLayers: Int) -> CAReplicatorLayer {
        
        let replicatorLayer = CAReplicatorLayer()
        let numberOfInstances: Int = numberOfLayers
        
        replicatorLayer.instanceCount = numberOfInstances
         
        var newTransform = CATransform3DMakeRotation(
            Angle(degrees: 7).radians,
            0, 0, 1
        )
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
        
        )
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )

        replicatorLayer.instanceTransform = newTransform

        replicatorLayer.addSublayer(inputLayer)
        
        return replicatorLayer
        
    }
    

    
    
}

#Preview {
    CALayerTesting()
}

struct MyIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.63017*width, y: 0.18189*height))
        path.addCurve(to: CGPoint(x: 0.47265*width, y: 0.02988*height), control1: CGPoint(x: 0.63205*width, y: 0.09223*height), control2: CGPoint(x: 0.55397*width, y: 0.02318*height))
        path.addCurve(to: CGPoint(x: 0.34042*width, y: 0.18189*height), control1: CGPoint(x: 0.39956*width, y: 0.03589*height), control2: CGPoint(x: 0.33803*width, y: 0.10189*height))
        path.addCurve(to: CGPoint(x: 0.14798*width, y: 0.17935*height), control1: CGPoint(x: 0.28383*width, y: 0.13435*height), control2: CGPoint(x: 0.2009*width, y: 0.1346*height))
        path.addCurve(to: CGPoint(x: 0.13555*width, y: 0.38191*height), control1: CGPoint(x: 0.08959*width, y: 0.22871*height), control2: CGPoint(x: 0.08184*width, y: 0.32032*height))
        path.addCurve(to: CGPoint(x: 0.00035*width, y: 0.513*height), control1: CGPoint(x: 0.06226*width, y: 0.38864*height), control2: CGPoint(x: 0.00527*width, y: 0.44559*height))
        path.addCurve(to: CGPoint(x: 0.13555*width, y: 0.66477*height), control1: CGPoint(x: -0.0051*width, y: 0.58742*height), control2: CGPoint(x: 0.05419*width, y: 0.65688*height))
        path.addCurve(to: CGPoint(x: 0.12747*width, y: 0.88335*height), control1: CGPoint(x: 0.06503*width, y: 0.72435*height), control2: CGPoint(x: 0.06607*width, y: 0.82923*height))
        path.addCurve(to: CGPoint(x: 0.34042*width, y: 0.86479*height), control1: CGPoint(x: 0.1851*width, y: 0.93412*height), control2: CGPoint(x: 0.28368*width, y: 0.92945*height))
        path.addCurve(to: CGPoint(x: 0.50683*width, y: 1.01414*height), control1: CGPoint(x: 0.34283*width, y: 0.95864*height), control2: CGPoint(x: 0.4271*width, y: 1.02515*height))
        path.addCurve(to: CGPoint(x: 0.63017*width, y: 0.86479*height), control1: CGPoint(x: 0.5738*width, y: 1.00489*height), control2: CGPoint(x: 0.63005*width, y: 0.94196*height))
        path.addCurve(to: CGPoint(x: 0.83902*width, y: 0.87401*height), control1: CGPoint(x: 0.68601*width, y: 0.92452*height), control2: CGPoint(x: 0.78151*width, y: 0.92727*height))
        path.addCurve(to: CGPoint(x: 0.83505*width, y: 0.66477*height), control1: CGPoint(x: 0.89855*width, y: 0.81887*height), control2: CGPoint(x: 0.89836*width, y: 0.72132*height))
        path.addCurve(to: CGPoint(x: 0.9846*width, y: 0.53835*height), control1: CGPoint(x: 0.9136*width, y: 0.66409*height), control2: CGPoint(x: 0.97741*width, y: 0.60678*height))
        path.addCurve(to: CGPoint(x: 0.83505*width, y: 0.38191*height), control1: CGPoint(x: 0.99281*width, y: 0.46026*height), control2: CGPoint(x: 0.92561*width, y: 0.38371*height))
        path.addCurve(to: CGPoint(x: 0.82603*width, y: 0.16667*height), control1: CGPoint(x: 0.89817*width, y: 0.31678*height), control2: CGPoint(x: 0.88895*width, y: 0.21536*height))
        path.addCurve(to: CGPoint(x: 0.63017*width, y: 0.18189*height), control1: CGPoint(x: 0.77174*width, y: 0.12466*height), control2: CGPoint(x: 0.68614*width, y: 0.12863*height))
        path.closeSubpath()
        return path
    }
}



extension UIBezierPath {
    
    convenience init(emotionShapeIn rect: CGRect) {

    
    
//    convenience init(emotionShapeIn rect: CGRect) {
        
        
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: 0.47819*width, y: 0.00434*height))
        path.addCurve(to: CGPoint(x: 0.04209*width, y: 0.20135*height), control1: CGPoint(x: 0.21445*width, y: -0.00202*height), control2: CGPoint(x: 0.02504*width, y: 0.10413*height))
        path.addCurve(to: CGPoint(x: 0.35925*width, y: 0.35441*height), control1: CGPoint(x: 0.05558*width, y: 0.27835*height), control2: CGPoint(x: 0.19812*width, y: 0.34728*height))
        path.addCurve(to: CGPoint(x: 0.70337*width, y: 0.24857*height), control1: CGPoint(x: 0.50121*width, y: 0.36068*height), control2: CGPoint(x: 0.68472*width, y: 0.32018*height))
        path.addCurve(to: CGPoint(x: 0.52576*width, y: 0.11994*height), control1: CGPoint(x: 0.71771*width, y: 0.19351*height), control2: CGPoint(x: 0.63403*width, y: 0.12215*height))
        path.addCurve(to: CGPoint(x: 0.32753*width, y: 0.23555*height), control1: CGPoint(x: 0.4188*width, y: 0.11776*height), control2: CGPoint(x: 0.3216*width, y: 0.18379*height))
        path.addCurve(to: CGPoint(x: 0.66373*width, y: 0.39511*height), control1: CGPoint(x: 0.33362*width, y: 0.28868*height), control2: CGPoint(x: 0.44828*width, y: 0.32565*height))
        path.addCurve(to: CGPoint(x: 0.9349*width, y: 0.48955*height), control1: CGPoint(x: 0.84286*width, y: 0.45287*height), control2: CGPoint(x: 0.88844*width, y: 0.45227*height))
        path.addCurve(to: CGPoint(x: 0.89526*width, y: 0.71018*height), control1: CGPoint(x: 1.01725*width, y: 0.55562*height), control2: CGPoint(x: 1.01616*width, y: 0.67153*height))
        path.addCurve(to: CGPoint(x: 0.47184*width, y: 0.60515*height), control1: CGPoint(x: 0.74283*width, y: 0.75889*height), control2: CGPoint(x: 0.46666*width, y: 0.66349*height))
        path.addCurve(to: CGPoint(x: 0.6114*width, y: 0.5099*height), control1: CGPoint(x: 0.4754*width, y: 0.56523*height), control2: CGPoint(x: 0.60962*width, y: 0.55517*height))
        path.addCurve(to: CGPoint(x: 0.41951*width, y: 0.42849*height), control1: CGPoint(x: 0.61311*width, y: 0.46628*height), control2: CGPoint(x: 0.49086*width, y: 0.41416*height))
        path.addCurve(to: CGPoint(x: 0.37987*width, y: 0.55061*height), control1: CGPoint(x: 0.35289*width, y: 0.44188*height), control2: CGPoint(x: 0.32853*width, y: 0.51365*height))
        path.addCurve(to: CGPoint(x: 0.63677*width, y: 0.59457*height), control1: CGPoint(x: 0.43887*width, y: 0.59309*height), control2: CGPoint(x: 0.56442*width, y: 0.56547*height))
        path.addCurve(to: CGPoint(x: 0.51783*width, y: 0.9886*height), control1: CGPoint(x: 0.71831*width, y: 0.62737*height), control2: CGPoint(x: 0.72535*width, y: 0.72948*height))
        
        self.init(cgPath: path)
        
    }
}

class TesteShapeView2: UIView {
    
    init() {
        super.init(frame: .init(x: 0, y: 0, width: 315, height: 614))
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        
        
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = 2
//        shapeLayer.lineDashPattern = [10,5,5,5]
        shapeLayer.lineDashPattern = [0.01, 8]
        shapeLayer.lineCap = CAShapeLayerLineCap.round

             
        let path = CGMutablePath()
//        path.addLines(between: [CGPoint(x: 30, y: 100),
        path.addPath(UIBezierPath(emotionShapeIn: .init(x: 0, y: 0, width: 315, height: 614)).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = self.frame/*.init(origin: .init(x: self.b, y: 300), size: .init(width: 300, height: 300))*/
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue }
        lineDashAnimation.duration = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude

        shapeLayer.frame = frame

        let lineAppearAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeStart))
        lineAppearAnimation.fromValue = 0
        lineAppearAnimation.toValue = 1
        lineAppearAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
        lineAppearAnimation.duration = 15
        lineAppearAnimation.repeatCount = 0
        shapeLayer.add(lineAppearAnimation, forKey: nil)
        shapeLayer.anchorPoint = .init(x: 0.15, y: 0.5)
        let replicated = cubeTopFace(inputLayer: shapeLayer, numberOfLayers: 30)
        self.layer.addSublayer(replicated)
    }
    
    func cubeTopFace(inputLayer: CAShapeLayer,numberOfLayers: Int) -> CAReplicatorLayer {
        
        
        
        
        
        let replicatorLayer = CAReplicatorLayer()
        
        
        let numberOfInstances: Int = numberOfLayers
        
        replicatorLayer.instanceCount = numberOfInstances
        
        

        
        var transformThing = CATransform3DIdentity
        transformThing = CATransform3DTranslate(transformThing, 315, 614/2, 1)
                transformThing = CATransform3DScale(transformThing, 0.91, 0.91, 1)
                transformThing = CATransform3DRotate(transformThing, -0.25 ,0, 0, 1)

        transformThing = CATransform3DTranslate(transformThing, -315, -614/2, 1)
        

        
        //CATransform3DMakeTranslation(614 * 0.5, 315 * 0.5, 0)
//        transformThing = CATransform3DTranslate(transformThing, 614 * 0.5, 315 * 0.5, 0)
//        transformThing = CATransform3DTranslate(transformThing, 614 * -0.5, 315 * -0.5, 0)
        
//        transformThing = CATransform3D
        
//        replicatorLayer.instanceTransform = transformThing
        
        
        
//        replicatorLayer.instanceTransform = CATransform3DMakeTranslation(21, 0.1, -0.1)
//        replicatorLayer.instanceTransform = CATransform3DMakeRotation(0.1, 0, 0, 1)
//        replicatorLayer.instanceTransform = .init(m11: <#T##CGFloat#>, m12: <#T##CGFloat#>, m13: <#T##CGFloat#>, m14: <#T##CGFloat#>, m21: <#T##CGFloat#>, m22: <#T##CGFloat#>, m23: <#T##CGFloat#>, m24: <#T##CGFloat#>, m31: <#T##CGFloat#>, m32: <#T##CGFloat#>, m33: <#T##CGFloat#>, m34: <#T##CGFloat#>, m41: <#T##CGFloat#>, m42: <#T##CGFloat#>, m43: <#T##CGFloat#>, m44: <#T##CGFloat#>)
        
//        replicatorLayer.anchorPoint = .zero
        
        replicatorLayer.instanceTransform = transformThing
        replicatorLayer.instanceDelay = 0.2
        replicatorLayer.addSublayer(inputLayer)
        
        return replicatorLayer
        
    }
    
    
}

class TesteShapeView1: UIView {
    
    override func layoutSubviews() {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = 2
//        shapeLayer.lineDashPattern = [10,5,5,5]
        shapeLayer.lineDashPattern = [0.01, 8]
        shapeLayer.lineCap = CAShapeLayerLineCap.round

             
        let path = CGMutablePath()
//        path.addLines(between: [CGPoint(x: 30, y: 100),
        path.addPath(UIBezierPath(emotionShapeIn: .init(x: 0, y: 0, width: 200, height: 300)).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = self.frame/*.init(origin: .init(x: self.b, y: 300), size: .init(width: 300, height: 300))*/
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue }
        lineDashAnimation.duration = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
             
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
        let lineAppearAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeStart))
        lineAppearAnimation.fromValue = 0
        lineAppearAnimation.toValue = 1
        lineAppearAnimation.timingFunction = CAMediaTimingFunction(name: .linear)
        lineAppearAnimation.duration = 15
        lineAppearAnimation.repeatCount = 0
//        shapeLayer.add(lineAppearAnimation, forKey: nil)

        
        self.layer.addSublayer(shapeLayer)
    }
    
    
}
