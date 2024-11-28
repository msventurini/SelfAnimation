//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func overloadTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -5).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func ovearloadPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        path.move(to: CGPoint(x: 0.44866*width, y: height))
        path.addLine(to: CGPoint(x: 0, y: 0.53723*height))
        path.addLine(to: CGPoint(x: 0.89733*width, y: 0.53723*height))
        path.addLine(to: CGPoint(x: 0.44866*width, y: height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.47966*width, y: 0.7687*height))
        path.addLine(to: CGPoint(x: 0.11092*width, y: 0.24709*height))
        path.addLine(to: CGPoint(x: 0.99782*width, y: 0.3755*height))
        path.addLine(to: CGPoint(x: 0.47966*width, y: 0.7687*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.61072*width, y: 0.5082*height))
        path.addLine(to: CGPoint(x: 0.10861*width, y: 0.09697*height))
        path.addLine(to: CGPoint(x: width, y: 0))
        path.addLine(to: CGPoint(x: 0.61072*width, y: 0.5082*height))
        path.closeSubpath()
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .overload, weight: .light)
        ShapeHomeRepresentable(shape: .overload, weight: .dark)
    }
    
})
