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
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + 19 }
        lineDashAnimation.duration = 1
        lineDashAnimation.fillMode = .forwards
        lineDashAnimation.speed = 1
//        lineDashAnimation.autoreverses = true
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

enum SelfShape {
    case surprise
    
    var ogFrame: CGRect {
        switch self {
        case .surprise:
                .init(x: 0, y: 0, width: 975, height: 558)
        }
        
    }
    
    var ogGap: CGFloat {
        
        switch self {
        case .surprise:
            return 37.5
        }
        
    }
    
    var ogLineWidth: CGFloat {
        switch self {
        case .surprise:
            return 8.0
        }
    }
    
    var lineWidth: CGFloat {
        return ogLineWidth * 0.5
    }
    
    var lineDashSpacing: NSNumber {
        return NSNumber(floatLiteral: Double(ogGap * 0.5 + (ogLineWidth * 0.01)))
    }
    
    var frame: CGRect {
        
        
        return ogFrame.insetBy(dx: ogFrame.width/4, dy: ogFrame.height/4)
        
//        switch self {
//        case .surprise:
//                .init(x: 0, y: 0, width: 487, height: 279)
//        }
        
        
    }
    
    
    var transform: CATransform3D {
        
        var newTransform: CATransform3D

        
        switch self {
        case .surprise:
            newTransform = CATransform3DMakeRotation(
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
        }
        
        return newTransform
    }
            
    
    
    static func path(emotion: SelfShape, rect: CGRect) -> CGPath {
        
        switch emotion {
        case .surprise:
            let path = CGMutablePath()
            let width = rect.size.width
            let height = rect.size.height

            path.move(to: CGPoint(x: 0.20358*width, y: 0.71124*height))
            path.addCurve(to: CGPoint(x: 0.40717*width, y: 0.35562*height), control1: CGPoint(x: 0.31602*width, y: 0.71124*height), control2: CGPoint(x: 0.40717*width, y: 0.55202*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0), control1: CGPoint(x: 0.40717*width, y: 0.15922*height), control2: CGPoint(x: 0.31602*width, y: 0))
            path.addCurve(to: CGPoint(x: 0, y: 0.35562*height), control1: CGPoint(x: 0.09115*width, y: 0), control2: CGPoint(x: 0, y: 0.15922*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0.71124*height), control1: CGPoint(x: 0, y: 0.55202*height), control2: CGPoint(x: 0.09115*width, y: 0.71124*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.47313*width, y: height))
            path.addCurve(to: CGPoint(x: 0.67672*width, y: 0.64438*height), control1: CGPoint(x: 0.58557*width, y: height), control2: CGPoint(x: 0.67672*width, y: 0.84078*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: 0.28876*height), control1: CGPoint(x: 0.67672*width, y: 0.44798*height), control2: CGPoint(x: 0.58557*width, y: 0.28876*height))
            path.addCurve(to: CGPoint(x: 0.26955*width, y: 0.64438*height), control1: CGPoint(x: 0.36069*width, y: 0.28876*height), control2: CGPoint(x: 0.26955*width, y: 0.44798*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: height), control1: CGPoint(x: 0.26955*width, y: 0.84078*height), control2: CGPoint(x: 0.36069*width, y: height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.79642*width, y: 0.94737*height))
            path.addCurve(to: CGPoint(x: width, y: 0.59175*height), control1: CGPoint(x: 0.90885*width, y: 0.94737*height), control2: CGPoint(x: width, y: 0.78815*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.23613*height), control1: CGPoint(x: width, y: 0.39534*height), control2: CGPoint(x: 0.90885*width, y: 0.23613*height))
            path.addCurve(to: CGPoint(x: 0.59283*width, y: 0.59175*height), control1: CGPoint(x: 0.68398*width, y: 0.23613*height), control2: CGPoint(x: 0.59283*width, y: 0.39534*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.94737*height), control1: CGPoint(x: 0.59283*width, y: 0.78815*height), control2: CGPoint(x: 0.68398*width, y: 0.94737*height))
            path.closeSubpath()
            
            return path
        }
    }
    
}


//struct MyIcon: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        let width = rect.size.width
//        let height = rect.size.height
//        path.move(to: CGPoint(x: 0.63017*width, y: 0.18189*height))
//        path.addCurve(to: CGPoint(x: 0.47265*width, y: 0.02988*height), control1: CGPoint(x: 0.63205*width, y: 0.09223*height), control2: CGPoint(x: 0.55397*width, y: 0.02318*height))
//        path.addCurve(to: CGPoint(x: 0.34042*width, y: 0.18189*height), control1: CGPoint(x: 0.39956*width, y: 0.03589*height), control2: CGPoint(x: 0.33803*width, y: 0.10189*height))
//        path.addCurve(to: CGPoint(x: 0.14798*width, y: 0.17935*height), control1: CGPoint(x: 0.28383*width, y: 0.13435*height), control2: CGPoint(x: 0.2009*width, y: 0.1346*height))
//        path.addCurve(to: CGPoint(x: 0.13555*width, y: 0.38191*height), control1: CGPoint(x: 0.08959*width, y: 0.22871*height), control2: CGPoint(x: 0.08184*width, y: 0.32032*height))
//        path.addCurve(to: CGPoint(x: 0.00035*width, y: 0.513*height), control1: CGPoint(x: 0.06226*width, y: 0.38864*height), control2: CGPoint(x: 0.00527*width, y: 0.44559*height))
//        path.addCurve(to: CGPoint(x: 0.13555*width, y: 0.66477*height), control1: CGPoint(x: -0.0051*width, y: 0.58742*height), control2: CGPoint(x: 0.05419*width, y: 0.65688*height))
//        path.addCurve(to: CGPoint(x: 0.12747*width, y: 0.88335*height), control1: CGPoint(x: 0.06503*width, y: 0.72435*height), control2: CGPoint(x: 0.06607*width, y: 0.82923*height))
//        path.addCurve(to: CGPoint(x: 0.34042*width, y: 0.86479*height), control1: CGPoint(x: 0.1851*width, y: 0.93412*height), control2: CGPoint(x: 0.28368*width, y: 0.92945*height))
//        path.addCurve(to: CGPoint(x: 0.50683*width, y: 1.01414*height), control1: CGPoint(x: 0.34283*width, y: 0.95864*height), control2: CGPoint(x: 0.4271*width, y: 1.02515*height))
//        path.addCurve(to: CGPoint(x: 0.63017*width, y: 0.86479*height), control1: CGPoint(x: 0.5738*width, y: 1.00489*height), control2: CGPoint(x: 0.63005*width, y: 0.94196*height))
//        path.addCurve(to: CGPoint(x: 0.83902*width, y: 0.87401*height), control1: CGPoint(x: 0.68601*width, y: 0.92452*height), control2: CGPoint(x: 0.78151*width, y: 0.92727*height))
//        path.addCurve(to: CGPoint(x: 0.83505*width, y: 0.66477*height), control1: CGPoint(x: 0.89855*width, y: 0.81887*height), control2: CGPoint(x: 0.89836*width, y: 0.72132*height))
//        path.addCurve(to: CGPoint(x: 0.9846*width, y: 0.53835*height), control1: CGPoint(x: 0.9136*width, y: 0.66409*height), control2: CGPoint(x: 0.97741*width, y: 0.60678*height))
//        path.addCurve(to: CGPoint(x: 0.83505*width, y: 0.38191*height), control1: CGPoint(x: 0.99281*width, y: 0.46026*height), control2: CGPoint(x: 0.92561*width, y: 0.38371*height))
//        path.addCurve(to: CGPoint(x: 0.82603*width, y: 0.16667*height), control1: CGPoint(x: 0.89817*width, y: 0.31678*height), control2: CGPoint(x: 0.88895*width, y: 0.21536*height))
//        path.addCurve(to: CGPoint(x: 0.63017*width, y: 0.18189*height), control1: CGPoint(x: 0.77174*width, y: 0.12466*height), control2: CGPoint(x: 0.68614*width, y: 0.12863*height))
//        path.closeSubpath()
//        return path
//    }
//}
//
//struct MyIcon2: Shape {
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//        let width = rect.size.width
//        let height = rect.size.height
//        path.move(to: CGPoint(x: 0.40408*width, y: 0.35085*height))
//        path.addCurve(to: CGPoint(x: 0.20204*width, y: 0.7017*height), control1: CGPoint(x: 0.40408*width, y: 0.54462*height), control2: CGPoint(x: 0.31362*width, y: 0.7017*height))
//        path.addCurve(to: CGPoint(x: 0, y: 0.35085*height), control1: CGPoint(x: 0.09046*width, y: 0.7017*height), control2: CGPoint(x: 0, y: 0.54462*height))
//        path.addCurve(to: CGPoint(x: 0.20204*width, y: 0), control1: CGPoint(x: 0, y: 0.15708*height), control2: CGPoint(x: 0.09046*width, y: 0))
//        path.addCurve(to: CGPoint(x: 0.40408*width, y: 0.35085*height), control1: CGPoint(x: 0.31362*width, y: 0), control2: CGPoint(x: 0.40408*width, y: 0.15708*height))
//        path.closeSubpath()
//        path.move(to: CGPoint(x: 0.67158*width, y: 0.63573*height))
//        path.addCurve(to: CGPoint(x: 0.46954*width, y: 0.98659*height), control1: CGPoint(x: 0.67158*width, y: 0.82951*height), control2: CGPoint(x: 0.58113*width, y: 0.98659*height))
//        path.addCurve(to: CGPoint(x: 0.2675*width, y: 0.63573*height), control1: CGPoint(x: 0.35796*width, y: 0.98659*height), control2: CGPoint(x: 0.2675*width, y: 0.82951*height))
//        path.addCurve(to: CGPoint(x: 0.46954*width, y: 0.28489*height), control1: CGPoint(x: 0.2675*width, y: 0.44197*height), control2: CGPoint(x: 0.35796*width, y: 0.28489*height))
//        path.addCurve(to: CGPoint(x: 0.67158*width, y: 0.63573*height), control1: CGPoint(x: 0.58113*width, y: 0.28489*height), control2: CGPoint(x: 0.67158*width, y: 0.44197*height))
//        path.closeSubpath()
//        path.move(to: CGPoint(x: 0.99241*width, y: 0.58381*height))
//        path.addCurve(to: CGPoint(x: 0.79037*width, y: 0.93466*height), control1: CGPoint(x: 0.99241*width, y: 0.77758*height), control2: CGPoint(x: 0.90196*width, y: 0.93466*height))
//        path.addCurve(to: CGPoint(x: 0.58834*width, y: 0.58381*height), control1: CGPoint(x: 0.67879*width, y: 0.93466*height), control2: CGPoint(x: 0.58834*width, y: 0.77758*height))
//        path.addCurve(to: CGPoint(x: 0.79037*width, y: 0.23296*height), control1: CGPoint(x: 0.58834*width, y: 0.39004*height), control2: CGPoint(x: 0.67879*width, y: 0.23296*height))
//        path.addCurve(to: CGPoint(x: 0.99241*width, y: 0.58381*height), control1: CGPoint(x: 0.90196*width, y: 0.23296*height), control2: CGPoint(x: 0.99241*width, y: 0.39004*height))
//        path.closeSubpath()
//        return path
//    }
//}
//
