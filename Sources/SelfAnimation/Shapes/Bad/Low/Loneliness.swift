//
//  Loneliness.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI


extension SelfShape {
    
    static func lonelinessTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -207).radians, 0, 0, 1)
        newTransform = CATransform3DScale(
            newTransform,
            0.91, -0.91, 0
            
        )
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        

        return newTransform
    }
    
    static func lonelinessPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.01456*width, y: 0.01456*height))
        path.addLine(to: CGPoint(x: 0.98544*width, y: 0.01456*height))
        path.addLine(to: CGPoint(x: 0.98544*width, y: 0.98544*height))
        path.addLine(to: CGPoint(x: 0.01456*width, y: 0.98544*height))
        path.addLine(to: CGPoint(x: 0.01456*width, y: 0.01456*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.16086*width, y: 0.26621*height))
        path.addLine(to: CGPoint(x: 0.73376*width, y: 0.16075*height))
        path.addLine(to: CGPoint(x: 0.83922*width, y: 0.73365*height))
        path.addLine(to: CGPoint(x: 0.26631*width, y: 0.83911*height))
        path.addLine(to: CGPoint(x: 0.16086*width, y: 0.26621*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.38306*width, y: 0.57196*height))
        path.addLine(to: CGPoint(x: 0.42803*width, y: 0.38307*height))
        path.addLine(to: CGPoint(x: 0.61693*width, y: 0.42803*height))
        path.addLine(to: CGPoint(x: 0.57196*width, y: 0.61693*height))
        path.addLine(to: CGPoint(x: 0.38306*width, y: 0.57196*height))
        path.closeSubpath()
        return path
    }
}

    
#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .loneliness, weight: .light)
            
        ShapeHomeRepresentable(shape: .loneliness, weight: .dark)
            
    }
    
})



struct MyIcon: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.01456*width, y: 0.01456*height))
        path.addLine(to: CGPoint(x: 0.98544*width, y: 0.01456*height))
        path.addLine(to: CGPoint(x: 0.98544*width, y: 0.98544*height))
        path.addLine(to: CGPoint(x: 0.01456*width, y: 0.98544*height))
        path.addLine(to: CGPoint(x: 0.01456*width, y: 0.01456*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.16086*width, y: 0.26621*height))
        path.addLine(to: CGPoint(x: 0.73376*width, y: 0.16075*height))
        path.addLine(to: CGPoint(x: 0.83922*width, y: 0.73365*height))
        path.addLine(to: CGPoint(x: 0.26631*width, y: 0.83911*height))
        path.addLine(to: CGPoint(x: 0.16086*width, y: 0.26621*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.38306*width, y: 0.57196*height))
        path.addLine(to: CGPoint(x: 0.42803*width, y: 0.38307*height))
        path.addLine(to: CGPoint(x: 0.61693*width, y: 0.42803*height))
        path.addLine(to: CGPoint(x: 0.57196*width, y: 0.61693*height))
        path.addLine(to: CGPoint(x: 0.38306*width, y: 0.57196*height))
        path.closeSubpath()
        return path
    }
}
