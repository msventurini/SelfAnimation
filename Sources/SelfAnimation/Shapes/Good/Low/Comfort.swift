//
//  Comfort.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI


extension SelfShape {
    
    static func comfortTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 0).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func comfortPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.97918*width, y: 0.53046*height))
        path.addCurve(to: CGPoint(x: 0.48982*width, y: 0.97664*height), control1: CGPoint(x: 0.94*width, y: 0.79825*height), control2: CGPoint(x: 0.69721*width, y: 0.97868*height))
        path.addCurve(to: CGPoint(x: 0.00045*width, y: 0.53046*height), control1: CGPoint(x: 0.23669*width, y: 0.97415*height), control2: CGPoint(x: -0.01206*width, y: 0.69941*height))
        path.addCurve(to: CGPoint(x: 0.13323*width, y: 0.34753*height), control1: CGPoint(x: 0.00671*width, y: 0.44592*height), control2: CGPoint(x: 0.0795*width, y: 0.37298*height))
        path.addCurve(to: CGPoint(x: 0.30927*width, y: 0.34753*height), control1: CGPoint(x: 0.21302*width, y: 0.30975*height), control2: CGPoint(x: 0.23931*width, y: 0.38215*height))
        path.addCurve(to: CGPoint(x: 0.48982*width, y: 0.08428*height), control1: CGPoint(x: 0.39164*width, y: 0.30678*height), control2: CGPoint(x: 0.38164*width, y: 0.19334*height))
        path.addCurve(to: CGPoint(x: 0.67937*width, y: 0.01847*height), control1: CGPoint(x: 0.51168*width, y: 0.06224*height), control2: CGPoint(x: 0.61469*width, y: -0.04162*height))
        path.addCurve(to: CGPoint(x: 0.74726*width, y: 0.18108*height), control1: CGPoint(x: 0.72076*width, y: 0.05692*height), control2: CGPoint(x: 0.70331*width, y: 0.12241*height))
        path.addCurve(to: CGPoint(x: 0.94613*width, y: 0.25366*height), control1: CGPoint(x: 0.81195*width, y: 0.26743*height), control2: CGPoint(x: 0.89146*width, y: 0.18122*height))
        path.addCurve(to: CGPoint(x: 0.97917*width, y: 0.53046*height), control1: CGPoint(x: 0.99336*width, y: 0.31626*height), control2: CGPoint(x: 0.9902*width, y: 0.45507*height))
        path.addLine(to: CGPoint(x: 0.97918*width, y: 0.53046*height))
        
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .comfort, weight: .light)
        ShapeHomeRepresentable(shape: .comfort, weight: .dark)
    }
    
})

