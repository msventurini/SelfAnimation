//
//  Boredom.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI


extension SelfShape {
    
    static func boredomTransform() -> CATransform3D {
        
        
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
    

    
    static func boredomPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99304*width, y: 0.98235*height))
        path.addCurve(to: CGPoint(x: 0.49652*width, y: 0.49216*height), control1: CGPoint(x: 0.97449*width, y: 0.93351*height), control2: CGPoint(x: 0.80064*width, y: 0.49216*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.98235*height), control1: CGPoint(x: 0.46561*width, y: 0.49216*height), control2: CGPoint(x: 0.18247*width, y: 0.50196*height))
        path.addCurve(to: CGPoint(x: 0.03178*width, y: 0.49608*height), control1: CGPoint(x: 0.01616*width, y: 0.85978*height), control2: CGPoint(x: 0.03158*width, y: 0.69373*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.00196*height), control1: CGPoint(x: 0.03198*width, y: 0.29476*height), control2: CGPoint(x: 0.01633*width, y: 0.12588*height))
        path.addLine(to: CGPoint(x: 0.99304*width, y: 0.00196*height))
        path.addCurve(to: CGPoint(x: 0.96921*width, y: 0.48627*height), control1: CGPoint(x: 0.98003*width, y: 0.13463*height), control2: CGPoint(x: 0.96943*width, y: 0.29843*height))
        path.addCurve(to: CGPoint(x: 0.99304*width, y: 0.98235*height), control1: CGPoint(x: 0.96899*width, y: 0.67926*height), control2: CGPoint(x: 0.97978*width, y: 0.84716*height))
        path.closeSubpath()
        
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .boredom, weight: .light)
        ShapeHomeRepresentable(shape: .boredom, weight: .dark)
    }
    
})
