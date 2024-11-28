//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUICore

extension SelfShape {
    
    static func confusionTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            -17/30, 17/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 7).radians,
                                           0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func confusionPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.26423*width, y: 0.51184*height))
        path.addCurve(to: CGPoint(x: 0.00205*width, y: 0.52365*height), control1: CGPoint(x: 0.26423*width, y: 0.51184*height), control2: CGPoint(x: -0.0271*width, y: 0.52623*height))
        path.addCurve(to: CGPoint(x: 0.26992*width, y: 1.01379*height), control1: CGPoint(x: 0.09609*width, y: 0.51533*height), control2: CGPoint(x: 0.35115*width, y: 0.96957*height))
        path.addCurve(to: CGPoint(x: 0.77543*width, y: 0.0028*height), control1: CGPoint(x: 0.23989*width, y: 1.03012*height), control2: CGPoint(x: 0.81368*width, y: -0.06229*height))
        path.addCurve(to: CGPoint(x: 0.99289*width, y: 0.50829*height), control1: CGPoint(x: 0.70682*width, y: 0.11953*height), control2: CGPoint(x: 1.07528*width, y: 0.63806*height))
        path.addCurve(to: CGPoint(x: 0.80337*width, y: 0.87442*height), control1: CGPoint(x: 0.95564*width, y: 0.44963*height), control2: CGPoint(x: 0.74784*width, y: 0.81733*height))
        path.addCurve(to: CGPoint(x: 0.26423*width, y: 0.51184*height), control1: CGPoint(x: 0.82486*width, y: 0.89652*height), control2: CGPoint(x: 0.24105*width, y: 0.51479*height))
        path.closeSubpath()
        return path
    }
}
