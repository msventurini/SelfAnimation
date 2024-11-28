//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    
    static func angerTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            -23/30, 5/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func angerPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.50309*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.34764*width, y: 0.32959*height), control1: CGPoint(x: 0.4987*width, y: 0.04503*height), control2: CGPoint(x: 0.478*width, y: 0.19831*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.49266*height), control1: CGPoint(x: 0.21048*width, y: 0.46772*height), control2: CGPoint(x: 0.04428*width, y: 0.48851*height))
        path.addCurve(to: CGPoint(x: 0.38185*width, y: 0.66559*height), control1: CGPoint(x: 0.03253*width, y: 0.4932*height), control2: CGPoint(x: 0.2367*width, y: 0.49985*height))
        path.addCurve(to: CGPoint(x: 0.50309*width, y: 0.98532*height), control1: CGPoint(x: 0.49571*width, y: 0.79561*height), control2: CGPoint(x: 0.50263*width, y: 0.94289*height))
        path.addCurve(to: CGPoint(x: 1.00619*width, y: 0.49266*height), control1: CGPoint(x: 0.67079*width, y: 0.8211*height), control2: CGPoint(x: 0.83848*width, y: 0.65689*height))
        path.addCurve(to: CGPoint(x: 0.65553*width, y: 0.33747*height), control1: CGPoint(x: 0.96631*width, y: 0.49046*height), control2: CGPoint(x: 0.79536*width, y: 0.47661*height))
        path.addCurve(to: CGPoint(x: 0.50309*width, y: 0), control1: CGPoint(x: 0.51948*width, y: 0.2021*height), control2: CGPoint(x: 0.5054*width, y: 0.04018*height))
        path.closeSubpath()
        return path
    }
}

#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .anger, weight: .light)
        ShapeHomeRepresentable(shape: .anger, weight: .dark)
    }
    
})

