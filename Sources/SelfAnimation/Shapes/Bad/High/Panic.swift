//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func panicTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            -26/3, 28/3, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -3).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func panicPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.51884*width, y: 0))
        path.addLine(to: CGPoint(x: 0.51884*width, y: 1.01689*height))
        path.move(to: CGPoint(x: 0, y: 0.50844*height))
        path.addLine(to: CGPoint(x: 1.02271*width, y: 0.50844*height))
        path.move(to: CGPoint(x: 0.22893*width, y: 0.78443*height))
        path.addLine(to: CGPoint(x: 0.81316*width, y: 0.21507*height))
        path.move(to: CGPoint(x: 0.77866*width, y: 0.78443*height))
        path.addLine(to: CGPoint(x: 0.24405*width, y: 0.21507*height))
        return path
        
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .panic, weight: .light)
        ShapeHomeRepresentable(shape: .panic, weight: .dark)
    }
    
})
