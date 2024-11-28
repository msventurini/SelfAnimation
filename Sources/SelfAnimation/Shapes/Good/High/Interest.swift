//
//  Interest.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI
import UIKit

extension SelfShape {
    static func interestTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 346).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func interestPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.move(to: CGPoint(x: 0.57166*width, y: 0.52686*height))
        path.addCurve(to: CGPoint(x: 0.48795*width, y: 0.67104*height), control1: CGPoint(x: 0.57166*width, y: 0.60648*height), control2: CGPoint(x: 0.53418*width, y: 0.67104*height))
        path.addCurve(to: CGPoint(x: 0.40423*width, y: 0.52686*height), control1: CGPoint(x: 0.44171*width, y: 0.67104*height), control2: CGPoint(x: 0.40423*width, y: 0.60648*height))
        path.addCurve(to: CGPoint(x: 0.48795*width, y: 0.38268*height), control1: CGPoint(x: 0.40423*width, y: 0.44723*height), control2: CGPoint(x: 0.44171*width, y: 0.38268*height))
        path.addCurve(to: CGPoint(x: 0.57166*width, y: 0.52686*height), control1: CGPoint(x: 0.53418*width, y: 0.38268*height), control2: CGPoint(x: 0.57166*width, y: 0.44723*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.91408*width, y: 0.33551*height))
        path.addCurve(to: CGPoint(x: 0.79996*width, y: 0.64153*height), control1: CGPoint(x: 0.92144*width, y: 0.43978*height), control2: CGPoint(x: 0.88039*width, y: 0.54987*height))
        path.addCurve(to: CGPoint(x: 0.48521*width, y: 0.82429*height), control1: CGPoint(x: 0.71953*width, y: 0.73319*height), control2: CGPoint(x: 0.60631*width, y: 0.79894*height))
        path.addCurve(to: CGPoint(x: 0.1542*width, y: 0.7767*height), control1: CGPoint(x: 0.36411*width, y: 0.84964*height), control2: CGPoint(x: 0.24504*width, y: 0.83252*height))
        path.addCurve(to: CGPoint(x: 0.00084*width, y: 0.52667*height), control1: CGPoint(x: 0.06337*width, y: 0.72089*height), control2: CGPoint(x: 0.0082*width, y: 0.63095*height))
        path.addCurve(to: CGPoint(x: 0.11496*width, y: 0.22064*height), control1: CGPoint(x: -0.00652*width, y: 0.42238*height), control2: CGPoint(x: 0.03453*width, y: 0.3123*height))
        path.addCurve(to: CGPoint(x: 0.42971*width, y: 0.03788*height), control1: CGPoint(x: 0.19539*width, y: 0.12898*height), control2: CGPoint(x: 0.30861*width, y: 0.06323*height))
        path.addCurve(to: CGPoint(x: 0.76072*width, y: 0.08546*height), control1: CGPoint(x: 0.55081*width, y: 0.01253*height), control2: CGPoint(x: 0.66988*width, y: 0.02965*height))
        path.addCurve(to: CGPoint(x: 0.91408*width, y: 0.33551*height), control1: CGPoint(x: 0.85155*width, y: 0.14128*height), control2: CGPoint(x: 0.90672*width, y: 0.23122*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.99165*width, y: 0.58878*height))
        path.addCurve(to: CGPoint(x: 0.86219*width, y: 0.87613*height), control1: CGPoint(x: 0.9936*width, y: 0.69377*height), control2: CGPoint(x: 0.94703*width, y: 0.79714*height))
        path.addCurve(to: CGPoint(x: 0.53925*width, y: 1.00996*height), control1: CGPoint(x: 0.77735*width, y: 0.95511*height), control2: CGPoint(x: 0.66119*width, y: 1.00326*height))
        path.addCurve(to: CGPoint(x: 0.21201*width, y: 0.9119*height), control1: CGPoint(x: 0.41732*width, y: 1.01668*height), control2: CGPoint(x: 0.29961*width, y: 0.9814*height))
        path.addCurve(to: CGPoint(x: 0.07216*width, y: 0.63938*height), control1: CGPoint(x: 0.12441*width, y: 0.8424*height), control2: CGPoint(x: 0.07411*width, y: 0.74437*height))
        path.addCurve(to: CGPoint(x: 0.20162*width, y: 0.35203*height), control1: CGPoint(x: 0.07021*width, y: 0.53438*height), control2: CGPoint(x: 0.11679*width, y: 0.43101*height))
        path.addCurve(to: CGPoint(x: 0.52456*width, y: 0.21818*height), control1: CGPoint(x: 0.28647*width, y: 0.27304*height), control2: CGPoint(x: 0.40263*width, y: 0.22489*height))
        path.addCurve(to: CGPoint(x: 0.8518*width, y: 0.31624*height), control1: CGPoint(x: 0.64649*width, y: 0.21147*height), control2: CGPoint(x: 0.76421*width, y: 0.24675*height))
        path.addCurve(to: CGPoint(x: 0.99165*width, y: 0.58878*height), control1: CGPoint(x: 0.9394*width, y: 0.38575*height), control2: CGPoint(x: 0.9897*width, y: 0.48378*height))
        path.closeSubpath()
        return path
    }
}
