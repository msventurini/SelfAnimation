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
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -2.07).radians, 0, 0, 1)
        
        
        
        
        
        
        
        
        
        return newTransform
    }
    
    static func lonelinessPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.10978*width, y: 0.10977*height))
        path.addLine(to: CGPoint(x: 1.09018*width, y: 0.10977*height))
        path.addLine(to: CGPoint(x: 1.09018*width, y: 1.09016*height))
        path.addLine(to: CGPoint(x: 0.10978*width, y: 1.09016*height))
        path.addLine(to: CGPoint(x: 0.10978*width, y: 0.10977*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.25752*width, y: 0.36388*height))
        path.addLine(to: CGPoint(x: 0.83604*width, y: 0.25738*height))
        path.addLine(to: CGPoint(x: 0.94252*width, y: 0.8359*height))
        path.addLine(to: CGPoint(x: 0.36401*width, y: 0.94239*height))
        path.addLine(to: CGPoint(x: 0.25752*width, y: 0.36388*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4819*width, y: 0.67264*height))
        path.addLine(to: CGPoint(x: 0.52731*width, y: 0.48189*height))
        path.addLine(to: CGPoint(x: 0.71806*width, y: 0.5273*height))
        path.addLine(to: CGPoint(x: 0.67265*width, y: 0.71804*height))
        path.addLine(to: CGPoint(x: 0.4819*width, y: 0.67264*height))
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
