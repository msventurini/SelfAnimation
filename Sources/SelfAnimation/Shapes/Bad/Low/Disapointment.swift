//
//  Disapointment.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI
extension SelfShape {
    
    static func disapointmentTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -3).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func disapointmentPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.66037*height))
        path.addCurve(to: CGPoint(x: 0.40423*width, y: 0.4777*height), control1: CGPoint(x: 0.07637*width, y: 0.58394*height), control2: CGPoint(x: 0.21966*width, y: 0.46775*height))
        path.addCurve(to: CGPoint(x: 1.00149*width, y: 1.00884*height), control1: CGPoint(x: 0.73485*width, y: 0.49554*height), control2: CGPoint(x: 0.94985*width, y: 0.90481*height))
        path.addCurve(to: CGPoint(x: 0.47783*width, y: 0.21019*height), control1: CGPoint(x: 0.92223*width, y: 0.80996*height), control2: CGPoint(x: 0.75416*width, y: 0.44486*height))
        path.addCurve(to: CGPoint(x: 0, y: 0), control1: CGPoint(x: 0.28645*width, y: 0.04768*height), control2: CGPoint(x: 0.11367*width, y: 0.00762*height))
        path.closeSubpath()
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .disapointment, weight: .light)
        ShapeHomeRepresentable(shape: .disapointment, weight: .dark)
    }
    
})
