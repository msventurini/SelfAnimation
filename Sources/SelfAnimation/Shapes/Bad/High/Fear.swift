//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func fearTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            45/3, -7, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -346).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func fearPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.52108*width, y: 0.98625*height))
        path.addCurve(to: CGPoint(x: 0.65779*width, y: 0.79427*height), control1: CGPoint(x: 0.52168*width, y: 0.98067*height), control2: CGPoint(x: 0.53819*width, y: 0.84825*height))
        path.addCurve(to: CGPoint(x: 0.87688*width, y: 0.81162*height), control1: CGPoint(x: 0.76878*width, y: 0.74418*height), control2: CGPoint(x: 0.86903*width, y: 0.80654*height))
        path.addCurve(to: CGPoint(x: 0.89567*width, y: 0.79635*height), control1: CGPoint(x: 0.88114*width, y: 0.80954*height), control2: CGPoint(x: 0.88888*width, y: 0.80504*height))
        path.addCurve(to: CGPoint(x: 0.90609*width, y: 0.77429*height), control1: CGPoint(x: 0.90066*width, y: 0.78998*height), control2: CGPoint(x: 0.90427*width, y: 0.78246*height))
        path.addLine(to: CGPoint(x: 0.99397*width, y: 0.38191*height))
        path.addCurve(to: CGPoint(x: 0.98355*width, y: 0.33536*height), control1: CGPoint(x: 0.99762*width, y: 0.36559*height), control2: CGPoint(x: 0.99379*width, y: 0.34846*height))
        path.addLine(to: CGPoint(x: 0.73733*width, y: 0.02071*height))
        path.addCurve(to: CGPoint(x: 0.69512*width, y: 0), control1: CGPoint(x: 0.72709*width, y: 0.00762*height), control2: CGPoint(x: 0.71155*width, y: 0))
        path.addLine(to: CGPoint(x: 0.30021*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.258*width, y: 0.02071*height), control1: CGPoint(x: 0.28378*width, y: 0), control2: CGPoint(x: 0.26825*width, y: 0.00763*height))
        path.addCurve(to: CGPoint(x: 0.21178*width, y: 0.21423*height), control1: CGPoint(x: 0.26065*width, y: 0.04396*height), control2: CGPoint(x: 0.26778*width, y: 0.13102*height))
        path.addCurve(to: CGPoint(x: 0.01178*width, y: 0.33537*height), control1: CGPoint(x: 0.14182*width, y: 0.31819*height), control2: CGPoint(x: 0.02911*width, y: 0.33334*height))
        path.addCurve(to: CGPoint(x: 0.00135*width, y: 0.35744*height), control1: CGPoint(x: 0.00883*width, y: 0.33913*height), control2: CGPoint(x: 0.00377*width, y: 0.34661*height))
        path.addCurve(to: CGPoint(x: 0.00135*width, y: 0.38192*height), control1: CGPoint(x: -0.00043*width, y: 0.3654*height), control2: CGPoint(x: -0.00048*width, y: 0.37376*height))
        path.addLine(to: CGPoint(x: 0.08923*width, y: 0.7743*height))
        path.addCurve(to: CGPoint(x: 0.11844*width, y: 0.81163*height), control1: CGPoint(x: 0.09289*width, y: 0.79063*height), control2: CGPoint(x: 0.10363*width, y: 0.80437*height))
        path.addLine(to: CGPoint(x: 0.47424*width, y: 0.98626*height))
        path.addCurve(to: CGPoint(x: 0.5211*width, y: 0.98626*height), control1: CGPoint(x: 0.48905*width, y: 0.99352*height), control2: CGPoint(x: 0.5063*width, y: 0.99352*height))
        path.addLine(to: CGPoint(x: 0.52108*width, y: 0.98625*height))
        path.closeSubpath()
        return path
    }
}

#Preview(body: {
    VStack {
        ShapeHomeRepresentable(shape: .fear, weight: .light)
            .background(.blue)
        ShapeHomeRepresentable(shape: .fear, weight: .dark)
            .background(.blue)
    }
    
})
