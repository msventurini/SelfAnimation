//
//  Disconnection.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI
extension SelfShape {
    
    static func disconnectionTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -3).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func disconnectionPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.50204*width, y: 0.26023*height))
        path.addLine(to: CGPoint(x: 0.25052*width, y: 0.63749*height))
        path.addLine(to: CGPoint(x: 0.50204*width, y: 1.01651*height))
        path.addLine(to: CGPoint(x: 0, y: 0.63837*height))
        path.addLine(to: CGPoint(x: 0.50204*width, y: 0.26023*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.502*width, y: 0.75629*height))
        path.addLine(to: CGPoint(x: 0.75352*width, y: 0.37902*height))
        path.addLine(to: CGPoint(x: 0.502*width, y: 0))
        path.addLine(to: CGPoint(x: 1.00404*width, y: 0.37814*height))
        path.addLine(to: CGPoint(x: 0.502*width, y: 0.75629*height))
        path.closeSubpath()
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .disconnection, weight: .light)
        ShapeHomeRepresentable(shape: .disconnection, weight: .dark)
    }
    
})
