//
//  Joy.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI
import UIKit

extension SelfShape {
    static func joyTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 39/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func joyPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.closeSubpath()
        return path
    }
}
