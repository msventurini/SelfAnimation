//
//  Sadness.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

extension SelfShape {
    
    static func sadnessTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 23/3, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -3).radians, 0, 0, 1)
        
        
        return newTransform
    }
    
    static func sadnessPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.00494*width, y: 0.54023*height))
        path.addLine(to: CGPoint(x: 0.25899*width, y: 0.98084*height))
        path.addLine(to: CGPoint(x: 0.48355*width, y: 0.01916*height))
        path.move(to: CGPoint(x: 0.55387*width, y: 0.36782*height))
        path.addLine(to: CGPoint(x: 0.66888*width, y: 0.90054*height))
        path.addLine(to: CGPoint(x: 0.99506*width, y: 0.42912*height))
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .sadness, weight: .light)
            
        ShapeHomeRepresentable(shape: .sadness, weight: .dark)
            
    }
    
})
