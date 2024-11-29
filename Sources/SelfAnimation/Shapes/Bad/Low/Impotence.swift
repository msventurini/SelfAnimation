//
//  Impotence.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

extension SelfShape {
    
    static func impotenceTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -358).radians, 0, 0, 1)
        
        
        return newTransform
    }
    
    static func impotencePath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.37211*height))
        path.addLine(to: CGPoint(x: 0.99334*width, y: 0.37211*height))
        path.move(to: CGPoint(x: 0, y: 0.65911*height))
        path.addLine(to: CGPoint(x: 0.99334*width, y: 0.65911*height))
        path.move(to: CGPoint(x: 0.25269*width, y: 1.00447*height))
        path.addLine(to: CGPoint(x: 0.74065*width, y: 0))
        return path
    }
}


#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .impotence, weight: .light)
            
        ShapeHomeRepresentable(shape: .impotence, weight: .dark)
            
    }
    
})
