//
//  Exaustion.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI


extension SelfShape {
    
    static func exaustionTransform() -> CATransform3D {
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 4.8/30, 0
        )
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -5).radians, 0, 0, 1)
        
        
        return newTransform
    }
    
    static func exaustionPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99405*width, y: 0.3565*height))
        path.addCurve(to: CGPoint(x: 0.49702*width, y: 0.99019*height), control1: CGPoint(x: 0.99405*width, y: 0.70647*height), control2: CGPoint(x: 0.77152*width, y: 0.99019*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.3565*height), control1: CGPoint(x: 0.22253*width, y: 0.99019*height), control2: CGPoint(x: 0, y: 0.70647*height))
        path.move(to: CGPoint(x: 0.49702*width, y: 0.69253*height))
        path.addLine(to: CGPoint(x: 0.65297*width, y: 0.3565*height))
        path.addLine(to: CGPoint(x: 0.49702*width, y: 0))
        path.addLine(to: CGPoint(x: 0.33215*width, y: 0.3565*height))
        path.addLine(to: CGPoint(x: 0.49702*width, y: 0.69253*height))
        path.closeSubpath()
        return path
    }

}


#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .exaustion, weight: .light)
            
        ShapeHomeRepresentable(shape: .exaustion, weight: .dark)
            
    }
    
})
