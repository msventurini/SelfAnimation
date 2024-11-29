//
//  Despair.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI
extension SelfShape {
    
    static func despairTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            -51/5, -19/5, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func despairPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.65346*width, y: 0.50652*height))
        path.addLine(to: CGPoint(x: 1.03671*width, y: 0.50652*height))
        path.addLine(to: CGPoint(x: 0.79237*width, y: 1.05633*height))
        path.addLine(to: CGPoint(x: 0.32445*width, y: 0.44053*height))
        path.addLine(to: CGPoint(x: 0.00469*width, y: 0.50652*height))
        path.addLine(to: CGPoint(x: 0.31484*width, y: 0.04471*height))
        path.addLine(to: CGPoint(x: 0.65346*width, y: 0.50652*height))
        path.closeSubpath()
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .despair, weight: .light)
        ShapeHomeRepresentable(shape: .despair, weight: .dark)
    }
    
})
