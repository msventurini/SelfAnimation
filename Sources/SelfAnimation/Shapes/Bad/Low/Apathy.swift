//
//  Apathy.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI



extension SelfShape {
    
    static func apathyTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -2).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func apathyPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99975*width, y: 0.56373*height))
        path.addLine(to: CGPoint(x: 0.49987*width, y: 0.76702*height))
        path.addLine(to: CGPoint(x: 0, y: 0.56373*height))
        path.addLine(to: CGPoint(x: 0.50973*width, y: 0.29233*height))
        path.addLine(to: CGPoint(x: 0.99975*width, y: 0.56373*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.38341*width, y: 0.98588*height))
                path.addLine(to: CGPoint(x: 0.61741*width, y: 0.0133*height))
        path.closeSubpath()
        
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .apathy, weight: .light)
        ShapeHomeRepresentable(shape: .apathy, weight: .dark)
    }
    
})
