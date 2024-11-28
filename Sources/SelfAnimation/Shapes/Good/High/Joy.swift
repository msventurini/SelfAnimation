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
        
        path.move(to: CGPoint(x: 0.98624*width, y: 0.02157*height))
        path.addCurve(to: CGPoint(x: 0.49731*width, y: 0.5915*height), control1: CGPoint(x: 1.03429*width, y: 0.09424*height), control2: CGPoint(x: 0.82214*width, y: 0.58885*height))
        path.addCurve(to: CGPoint(x: 0.00837*width, y: 0.02157*height), control1: CGPoint(x: 0.17322*width, y: 0.59416*height), control2: CGPoint(x: -0.04639*width, y: 0.10532*height))
        path.addCurve(to: CGPoint(x: 0.49731*width, y: 0.30654*height), control1: CGPoint(x: 0.05362*width, y: -0.04761*height), control2: CGPoint(x: 0.35772*width, y: 0.05021*height))
        path.addCurve(to: CGPoint(x: 0.4934*width, y: 0.99046*height), control1: CGPoint(x: 0.65314*width, y: 0.59271*height), control2: CGPoint(x: 0.55394*width, y: 0.98467*height))
        path.addCurve(to: CGPoint(x: 0.36627*width, y: 0.64166*height), control1: CGPoint(x: 0.43566*width, y: 0.99597*height), control2: CGPoint(x: 0.31978*width, y: 0.78478*height))
        path.addCurve(to: CGPoint(x: 0.71537*width, y: 0.38177*height), control1: CGPoint(x: 0.41241*width, y: 0.49966*height), control2: CGPoint(x: 0.57444*width, y: 0.56652*height))
        path.addCurve(to: CGPoint(x: 0.93833*width, y: 0.01017*height), control1: CGPoint(x: 0.83477*width, y: 0.22525*height), control2: CGPoint(x: 0.83404*width, y: 0.02575*height))
        path.addCurve(to: CGPoint(x: 0.98624*width, y: 0.02157*height), control1: CGPoint(x: 0.94857*width, y: 0.00865*height), control2: CGPoint(x: 0.97508*width, y: 0.00468*height))
        
        path.closeSubpath()
        return path
    }
}
