//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func stressTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            10.7/30, 14/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -5).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func stressPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.98947*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.02117*width, y: 0.37455*height), control1: CGPoint(x: 0.33699*width, y: 0.16717*height), control2: CGPoint(x: 0.0142*width, y: 0.29201*height))
        path.addCurve(to: CGPoint(x: 0.25975*width, y: 0.46423*height), control1: CGPoint(x: 0.02451*width, y: 0.41422*height), control2: CGPoint(x: 0.10404*width, y: 0.44411*height))
        path.addLine(to: CGPoint(x: 0.76533*width, y: 0.46423*height))
        path.addCurve(to: CGPoint(x: 0.98689*width, y: 0.50511*height), control1: CGPoint(x: 0.90756*width, y: 0.45988*height), control2: CGPoint(x: 0.98142*width, y: 0.4735*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.986*height), control1: CGPoint(x: 0.9991*width, y: 0.5757*height), control2: CGPoint(x: 0.67015*width, y: 0.73599*height))
        path.addCurve(to: CGPoint(x: 0.98947*width, y: 0), control1: CGPoint(x: 0.32982*width, y: 0.65734*height), control2: CGPoint(x: 0.65965*width, y: 0.32867*height))
        path.closeSubpath()
        
        
        path.closeSubpath()
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .stress, weight: .light)
//            .background(.blue)
        ShapeHomeRepresentable(shape: .stress, weight: .dark)
//            .background(.blue)
    }
    
})
