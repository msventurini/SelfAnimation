//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func frustrationTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            33/30, 5/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func frustrationPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.33682*width, y: 0.98445*height))
        path.addLine(to: CGPoint(x: 0.0121*width, y: 0.86401*height))
        path.addCurve(to: CGPoint(x: 0.0032*width, y: 0.83236*height), control1: CGPoint(x: 0.00092*width, y: 0.85987*height), control2: CGPoint(x: -0.0036*width, y: 0.8438*height))
        path.addLine(to: CGPoint(x: 0.49272*width, y: 0.00863*height))
        path.addCurve(to: CGPoint(x: 0.50734*width, y: 0.00002*height), control1: CGPoint(x: 0.49608*width, y: 0.00298*height), control2: CGPoint(x: 0.50157*width, y: -0.00025*height))
        path.addLine(to: CGPoint(x: 0.98598*width, y: 0.02216*height))
        path.addCurve(to: CGPoint(x: 1.00152*width, y: 0.04947*height), control1: CGPoint(x: 0.99748*width, y: 0.0227*height), control2: CGPoint(x: 1.00529*width, y: 0.03641*height))
        path.addLine(to: CGPoint(x: 0.76416*width, y: 0.8737*height))
        path.addCurve(to: CGPoint(x: 0.7308*width, y: 0.86697*height), control1: CGPoint(x: 0.75784*width, y: 0.89566*height), control2: CGPoint(x: 0.7308*width, y: 0.8902*height))
        path.addLine(to: CGPoint(x: 0.7308*width, y: 0.5682*height))
        path.addCurve(to: CGPoint(x: 0.69668*width, y: 0.56532*height), control1: CGPoint(x: 0.7308*width, y: 0.5426*height), control2: CGPoint(x: 0.69966*width, y: 0.53997*height))
        path.addCurve(to: CGPoint(x: 0.66256*width, y: 0.56245*height), control1: CGPoint(x: 0.6937*width, y: 0.59067*height), control2: CGPoint(x: 0.66257*width, y: 0.58805*height))
        path.addLine(to: CGPoint(x: 0.66251*width, y: 0.35817*height))
        path.addCurve(to: CGPoint(x: 0.63018*width, y: 0.34861*height), control1: CGPoint(x: 0.66251*width, y: 0.33665*height), control2: CGPoint(x: 0.6385*width, y: 0.32955*height))
        path.addLine(to: CGPoint(x: 0.35706*width, y: 0.97433*height))
        path.addCurve(to: CGPoint(x: 0.33681*width, y: 0.98444*height), control1: CGPoint(x: 0.35323*width, y: 0.98312*height), control2: CGPoint(x: 0.34471*width, y: 0.98737*height))
        path.addLine(to: CGPoint(x: 0.33682*width, y: 0.98445*height))
        
        
        path.closeSubpath()
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .frustration, weight: .light)
        ShapeHomeRepresentable(shape: .frustration, weight: .dark)
    }
    
})
