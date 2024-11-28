//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func disgustTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            -31.2/3, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -5).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    
    static func disgustPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99883*width, y: 0))
        path.addLine(to: CGPoint(x: 0, y: 0.34254*height))
        path.addCurve(to: CGPoint(x: 0.4038*width, y: 0.52971*height), control1: CGPoint(x: 0.10296*width, y: 0.3702*height), control2: CGPoint(x: 0.25136*width, y: 0.42329*height))
        path.addCurve(to: CGPoint(x: 0.80828*width, y: 1.00202*height), control1: CGPoint(x: 0.63816*width, y: 0.69331*height), control2: CGPoint(x: 0.7558*width, y: 0.89482*height))
        path.addCurve(to: CGPoint(x: 0.71684*width, y: 0.44819*height), control1: CGPoint(x: 0.77644*width, y: 0.94827*height), control2: CGPoint(x: 0.65568*width, y: 0.72992*height))
        path.addCurve(to: CGPoint(x: 0.99883*width, y: 0), control1: CGPoint(x: 0.77278*width, y: 0.19051*height), control2: CGPoint(x: 0.94563*width, y: 0.04232*height))
        path.closeSubpath()
        
        path.closeSubpath()
        return path
    }

    
    
    
    
}
#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .disgust, weight: .light)
        ShapeHomeRepresentable(shape: .disgust, weight: .dark)
    }
    
})
