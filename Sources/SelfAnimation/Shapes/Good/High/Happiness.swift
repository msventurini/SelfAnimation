//
//  Happiness.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI
import UIKit




extension SelfShape {
    static func happinessTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 31).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func happinessPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.move(to: CGPoint(x: 0.65283*width, y: 0.18035*height))
        path.addCurve(to: CGPoint(x: 0.49453*width, y: 0.02761*height), control1: CGPoint(x: 0.65472*width, y: 0.09026*height), control2: CGPoint(x: 0.57626*width, y: 0.02088*height))
        path.addCurve(to: CGPoint(x: 0.36166*width, y: 0.18035*height), control1: CGPoint(x: 0.42108*width, y: 0.03365*height), control2: CGPoint(x: 0.35925*width, y: 0.09996*height))
        path.addCurve(to: CGPoint(x: 0.16826*width, y: 0.1778*height), control1: CGPoint(x: 0.30478*width, y: 0.13258*height), control2: CGPoint(x: 0.22144*width, y: 0.13284*height))
        path.addCurve(to: CGPoint(x: 0.15576*width, y: 0.38134*height), control1: CGPoint(x: 0.10958*width, y: 0.2274*height), control2: CGPoint(x: 0.10179*width, y: 0.31945*height))
        path.addCurve(to: CGPoint(x: 0.01989*width, y: 0.51306*height), control1: CGPoint(x: 0.08212*width, y: 0.3881*height), control2: CGPoint(x: 0.02484*width, y: 0.44533*height))
        path.addCurve(to: CGPoint(x: 0.15576*width, y: 0.66557*height), control1: CGPoint(x: 0.01442*width, y: 0.58784*height), control2: CGPoint(x: 0.074*width, y: 0.65764*height))
        path.addCurve(to: CGPoint(x: 0.14765*width, y: 0.8852*height), control1: CGPoint(x: 0.0849*width, y: 0.72543*height), control2: CGPoint(x: 0.08595*width, y: 0.83082*height))
        path.addCurve(to: CGPoint(x: 0.36166*width, y: 0.86656*height), control1: CGPoint(x: 0.20555*width, y: 0.93622*height), control2: CGPoint(x: 0.30463*width, y: 0.93153*height))
        path.addCurve(to: CGPoint(x: 0.52888*width, y: 1.01663*height), control1: CGPoint(x: 0.36407*width, y: 0.96085*height), control2: CGPoint(x: 0.44876*width, y: 1.02769*height))
        path.addCurve(to: CGPoint(x: 0.65283*width, y: 0.86656*height), control1: CGPoint(x: 0.59618*width, y: 1.00733*height), control2: CGPoint(x: 0.65271*width, y: 0.94409*height))
        path.addCurve(to: CGPoint(x: 0.86271*width, y: 0.87582*height), control1: CGPoint(x: 0.70895*width, y: 0.92657*height), control2: CGPoint(x: 0.80492*width, y: 0.92933*height))
        path.addCurve(to: CGPoint(x: 0.85872*width, y: 0.66557*height), control1: CGPoint(x: 0.92254*width, y: 0.82042*height), control2: CGPoint(x: 0.92235*width, y: 0.72239*height))
        path.addCurve(to: CGPoint(x: 1.00902*width, y: 0.53854*height), control1: CGPoint(x: 0.93767*width, y: 0.66489*height), control2: CGPoint(x: 1.00179*width, y: 0.6073*height))
        path.addCurve(to: CGPoint(x: 0.85872*width, y: 0.38134*height), control1: CGPoint(x: 1.01727*width, y: 0.46007*height), control2: CGPoint(x: 0.94974*width, y: 0.38314*height))
        path.addCurve(to: CGPoint(x: 0.84966*width, y: 0.16506*height), control1: CGPoint(x: 0.92215*width, y: 0.3159*height), control2: CGPoint(x: 0.91289*width, y: 0.21399*height))
        path.addCurve(to: CGPoint(x: 0.65283*width, y: 0.18035*height), control1: CGPoint(x: 0.79511*width, y: 0.12285*height), control2: CGPoint(x: 0.70908*width, y: 0.12683*height))
        path.closeSubpath()
        return path
    }
}
#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .happiness, weight: .light)
        ShapeHomeRepresentable(shape: .happiness, weight: .dark)
    }
    
})

