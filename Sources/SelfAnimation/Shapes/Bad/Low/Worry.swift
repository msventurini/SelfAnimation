//
//  Worry.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

extension SelfShape {
    
    static func worryTransform() -> CATransform3D {
        
        
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
    
    static func worryPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.0081*width, y: 0))
        path.addLine(to: CGPoint(x: 0.28723*width, y: 0.31876*height))
        path.addLine(to: CGPoint(x: 0.53374*width, y: 0))
        path.addLine(to: CGPoint(x: 0.77129*width, y: 0.31876*height))
        path.addLine(to: CGPoint(x: 1.03048*width, y: 0))
        path.move(to: CGPoint(x: 0, y: 0.31912*height))
        path.addLine(to: CGPoint(x: 0.27913*width, y: 0.63789*height))
        path.addLine(to: CGPoint(x: 0.52564*width, y: 0.31912*height))
        path.addLine(to: CGPoint(x: 0.76319*width, y: 0.63789*height))
        path.addLine(to: CGPoint(x: 1.02238*width, y: 0.31912*height))
        path.move(to: CGPoint(x: 0, y: 0.66545*height))
        path.addLine(to: CGPoint(x: 0.27913*width, y: 0.98425*height))
        path.addLine(to: CGPoint(x: 0.52564*width, y: 0.66545*height))
        path.addLine(to: CGPoint(x: 0.76319*width, y: 0.98425*height))
        path.addLine(to: CGPoint(x: 1.02238*width, y: 0.66545*height))
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .worry, weight: .light)
            
        ShapeHomeRepresentable(shape: .worry, weight: .dark)
            
    }
    
})
