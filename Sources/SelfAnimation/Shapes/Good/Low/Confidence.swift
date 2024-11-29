//
//  Confidence.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

extension SelfShape {
    
    static func confidenceTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
           -32/30, 16/3, 0
        )
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -356).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func confidencePath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.88187*width, y: 0.38365*height))
        path.addCurve(to: CGPoint(x: 0.6289*width, y: 0.30914*height), control1: CGPoint(x: 0.76564*width, y: 0.3923*height), control2: CGPoint(x: 0.6826*width, y: 0.34912*height))
        path.addCurve(to: CGPoint(x: 0.34407*width, y: 0.0376*height), control1: CGPoint(x: 0.50982*width, y: 0.22049*height), control2: CGPoint(x: 0.46768*width, y: 0.09747*height))
        path.addCurve(to: CGPoint(x: 0.15977*width, y: 0.0167*height), control1: CGPoint(x: 0.26874*width, y: 0.0011*height), control2: CGPoint(x: 0.20233*width, y: 0.00704*height))
        path.addCurve(to: CGPoint(x: 0.10047*width, y: 0.03685*height), control1: CGPoint(x: 0.15648*width, y: 0.01504*height), control2: CGPoint(x: 0.1268*width, y: 0.00096*height))
        path.addCurve(to: CGPoint(x: 0.0736*width, y: 0.13419*height), control1: CGPoint(x: 0.08433*width, y: 0.05886*height), control2: CGPoint(x: 0.0736*width, y: 0.09373*height))
        path.addCurve(to: CGPoint(x: 0.12889*width, y: 0.32036*height), control1: CGPoint(x: 0.10353*width, y: 0.18341*height), control2: CGPoint(x: 0.13627*width, y: 0.2527*height))
        path.addCurve(to: CGPoint(x: 0.0135*width, y: 0.5226*height), control1: CGPoint(x: 0.1186*width, y: 0.41472*height), control2: CGPoint(x: 0.03944*width, y: 0.42163*height))
        path.addCurve(to: CGPoint(x: 0.0736*width, y: 0.86809*height), control1: CGPoint(x: -0.00205*width, y: 0.58315*height), control2: CGPoint(x: -0.00047*width, y: 0.6853*height))
        path.addCurve(to: CGPoint(x: 0.10047*width, y: 0.96543*height), control1: CGPoint(x: 0.0736*width, y: 0.87425*height), control2: CGPoint(x: 0.07414*width, y: 0.92953*height))
        path.addCurve(to: CGPoint(x: 0.15977*width, y: 0.98558*height), control1: CGPoint(x: 0.1166*width, y: 0.98743*height), control2: CGPoint(x: 0.13815*width, y: 0.99657*height))
        path.addCurve(to: CGPoint(x: 0.34615*width, y: 0.71921*height), control1: CGPoint(x: 0.22227*width, y: 0.83154*height), control2: CGPoint(x: 0.29493*width, y: 0.68974*height))
        path.addCurve(to: CGPoint(x: 0.40644*width, y: 0.85966*height), control1: CGPoint(x: 0.3788*width, y: 0.73801*height), control2: CGPoint(x: 0.38029*width, y: 0.81348*height))
        path.addCurve(to: CGPoint(x: 0.88187*width, y: 0.61863*height), control1: CGPoint(x: 0.45399*width, y: 0.94361*height), control2: CGPoint(x: 0.58004*width, y: 0.92543*height))
        path.addCurve(to: CGPoint(x: 0.90372*width, y: 0.59459*height), control1: CGPoint(x: 0.88771*width, y: 0.61301*height), control2: CGPoint(x: 0.89529*width, y: 0.60513*height))
        path.addCurve(to: CGPoint(x: 0.99064*width, y: 0.34843*height), control1: CGPoint(x: 0.96352*width, y: 0.51985*height), control2: CGPoint(x: 1.00681*width, y: 0.38616*height))
        path.addCurve(to: CGPoint(x: 0.88187*width, y: 0.38361*height), control1: CGPoint(x: 0.98314*width, y: 0.33092*height), control2: CGPoint(x: 0.95885*width, y: 0.32474*height))
        path.addLine(to: CGPoint(x: 0.88187*width, y: 0.38365*height))
        path.closeSubpath()
        path.closeSubpath()
        return path
    }
}

#Preview(body: {
    VStack {
        
        ShapeHomeRepresentable(shape: .confidence, weight: .light)
        ShapeHomeRepresentable(shape: .confidence, weight: .dark)
    }
    
})

