//
//  Shame.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

extension SelfShape {
    
    static func shameTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            45/3, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -3).radians, 0, 0, 1)
        
        
        return newTransform
    }
    
    static func shamePath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0, y: 0.77162*height))
        path.addCurve(to: CGPoint(x: 0.29274*width, y: 0.81536*height), control1: CGPoint(x: 0.07128*width, y: 0.75785*height), control2: CGPoint(x: 0.29274*width, y: 0.81536*height))
        path.addLine(to: CGPoint(x: 0.4995*width, y: 0.99034*height))
        path.addLine(to: CGPoint(x: 1.01947*width, y: 0.77162*height))
        path.move(to: CGPoint(x: 0.77176*width, y: 0.63623*height))
        path.addLine(to: CGPoint(x: 0.83604*width, y: 0.4656*height))
        path.addLine(to: CGPoint(x: 0.77176*width, y: 0.29497*height))
        path.addLine(to: CGPoint(x: 0.69807*width, y: 0.47296*height))
        path.addLine(to: CGPoint(x: 0.77176*width, y: 0.63623*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.89551*width, y: 0.3887*height))
        path.addLine(to: CGPoint(x: 0.93349*width, y: 0.28527*height))
        path.addLine(to: CGPoint(x: 0.89551*width, y: 0.18185*height))
        path.addLine(to: CGPoint(x: 0.85197*width, y: 0.28973*height))
        path.addLine(to: CGPoint(x: 0.89551*width, y: 0.3887*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.79783*width, y: 0.20685*height))
        path.addLine(to: CGPoint(x: 0.83581*width, y: 0.10342*height))
        path.addLine(to: CGPoint(x: 0.79783*width, y: 0))
        path.addLine(to: CGPoint(x: 0.75429*width, y: 0.10789*height))
        path.addLine(to: CGPoint(x: 0.79783*width, y: 0.20685*height))
        path.closeSubpath()
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .shame, weight: .light)
            
        ShapeHomeRepresentable(shape: .shame, weight: .dark)
            
    }
    
})
