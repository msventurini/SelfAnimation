//
//  Guilt.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI


extension SelfShape {
    
    static func guiltTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -6).radians, 0, 0, 1)
        
        
        return newTransform
    }
    
    static func guiltPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.12622*width, y: 0.96477*height))
        path.addLine(to: CGPoint(x: 0.25243*width, y: 0.05184*height))
        path.addCurve(to: CGPoint(x: 0.12026*width, y: 0.14704*height), control1: CGPoint(x: 0.24597*width, y: 0.064*height), control2: CGPoint(x: 0.19772*width, y: 0.15159*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.05184*height), control1: CGPoint(x: 0.04973*width, y: 0.14291*height), control2: CGPoint(x: 0.0072*width, y: 0.06541*height))
        path.addCurve(to: CGPoint(x: 0.12622*width, y: 0.96477*height), control1: CGPoint(x: 0.04207*width, y: 0.35615*height), control2: CGPoint(x: 0.08415*width, y: 0.66047*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49972*width, y: 1.05447*height))
        path.addLine(to: CGPoint(x: 0.62594*width, y: 0.14155*height))
        path.addCurve(to: CGPoint(x: 0.50031*width, y: 0.23857*height), control1: CGPoint(x: 0.61959*width, y: 0.15394*height), control2: CGPoint(x: 0.57491*width, y: 0.23814*height))
        path.addCurve(to: CGPoint(x: 0.3735*width, y: 0.14155*height), control1: CGPoint(x: 0.42501*width, y: 0.23902*height), control2: CGPoint(x: 0.37977*width, y: 0.15378*height))
        path.addCurve(to: CGPoint(x: 0.49972*width, y: 1.05447*height), control1: CGPoint(x: 0.41557*width, y: 0.44585*height), control2: CGPoint(x: 0.45765*width, y: 0.75017*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.87277*width, y: 0.96477*height))
        path.addLine(to: CGPoint(x: 0.99899*width, y: 0.05184*height))
        path.addCurve(to: CGPoint(x: 0.86608*width, y: 0.14155*height), control1: CGPoint(x: 0.99138*width, y: 0.06495*height), control2: CGPoint(x: 0.94247*width, y: 0.1464*height))
        path.addCurve(to: CGPoint(x: 0.74655*width, y: 0.05184*height), control1: CGPoint(x: 0.79787*width, y: 0.13723*height), control2: CGPoint(x: 0.75539*width, y: 0.06712*height))
        path.addCurve(to: CGPoint(x: 0.87277*width, y: 0.96477*height), control1: CGPoint(x: 0.78862*width, y: 0.35615*height), control2: CGPoint(x: 0.8307*width, y: 0.66047*height))
        path.closeSubpath()
        return path
    }
    
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .guilt, weight: .light)
            
        ShapeHomeRepresentable(shape: .guilt, weight: .dark)
            
    }
    
})
