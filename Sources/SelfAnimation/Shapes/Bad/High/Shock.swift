//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func shockTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 32/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 9).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func shockPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: 1.00002*width, y: 0.98998*height))
        path.move(to: CGPoint(x: 0, y: 0.9901*height))
        path.addLine(to: CGPoint(x: 1.00002*width, y: 0.00011*height))
        
        path.closeSubpath()
        return path
    }
}
