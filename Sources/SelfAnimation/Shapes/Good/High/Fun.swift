//
//  Fun.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import SwiftUI
import UIKit


extension SelfShape {
    static func funTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 15).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    
    static func funPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.move(to: CGPoint(x: 0.67156*width, y: 0.00337*height))
        path.addCurve(to: CGPoint(x: 0.7779*width, y: 0.31187*height), control1: CGPoint(x: 0.74402*width, y: 0.02817*height), control2: CGPoint(x: 0.70788*width, y: 0.16824*height))
        path.addCurve(to: CGPoint(x: 0.98908*width, y: 0.56808*height), control1: CGPoint(x: 0.85486*width, y: 0.46979*height), control2: CGPoint(x: 0.97441*width, y: 0.45616*height))
        path.addCurve(to: CGPoint(x: 0.82008*width, y: 0.8485*height), control1: CGPoint(x: 1.00477*width, y: 0.68773*height), control2: CGPoint(x: 0.8793*width, y: 0.79504*height))
        path.addCurve(to: CGPoint(x: 0.50112*width, y: 0.99394*height), control1: CGPoint(x: 0.78273*width, y: 0.88221*height), control2: CGPoint(x: 0.66133*width, y: 0.99179*height))
        path.addCurve(to: CGPoint(x: 0.00018*width, y: 0.4857*height), control1: CGPoint(x: 0.23823*width, y: 0.99748*height), control2: CGPoint(x: -0.00758*width, y: 0.72624*height))
        path.addCurve(to: CGPoint(x: 0.15975*width, y: 0.19106*height), control1: CGPoint(x: 0.00552*width, y: 0.32008*height), control2: CGPoint(x: 0.13075*width, y: 0.18019*height))
        path.addCurve(to: CGPoint(x: 0.18361*width, y: 0.42924*height), control1: CGPoint(x: 0.18974*width, y: 0.20228*height), control2: CGPoint(x: 0.1146*width, y: 0.37383*height))
        path.addCurve(to: CGPoint(x: 0.60818*width, y: 0.01073*height), control1: CGPoint(x: 0.23752*width, y: 0.47254*height), control2: CGPoint(x: 0.37114*width, y: 0.43823*height))
        path.addCurve(to: CGPoint(x: 0.67156*width, y: 0.00338*height), control1: CGPoint(x: 0.61888*width, y: 0.00594*height), control2: CGPoint(x: 0.64494*width, y: -0.00573*height))
        path.addLine(to: CGPoint(x: 0.67156*width, y: 0.00337*height))
        path.closeSubpath()
        return path
    }
}
