//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func envyTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            4/30, -6/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 3).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func envyPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.50627*height))
        path.addCurve(to: CGPoint(x: 1.00325*width, y: 1.01254*height), control1: CGPoint(x: 0.3913*width, y: 0.5669*height), control2: CGPoint(x: 0.72224*width, y: 0.74228*height))
        path.addCurve(to: CGPoint(x: 1.00325*width, y: 0), control1: CGPoint(x: 0.65193*width, y: 0.47282*height), control2: CGPoint(x: 0.62413*width, y: 0.11929*height))
        path.addLine(to: CGPoint(x: 0, y: 0.50627*height))
        path.closeSubpath()
        
        path.closeSubpath()
        return path
    }
}
