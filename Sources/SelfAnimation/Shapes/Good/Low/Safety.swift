//
//  Safety.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI



extension SelfShape {
    
    static func safetyTransform() -> CATransform3D {
        
        
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
    

    
    static func safetyPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.83849*width, y: 0.17056*height))
        path.addCurve(to: CGPoint(x: 0.85507*width, y: 0.27506*height), control1: CGPoint(x: 0.84947*width, y: 0.20162*height), control2: CGPoint(x: 0.8612*width, y: 0.23481*height))
        path.addCurve(to: CGPoint(x: 0.71275*width, y: 0.40906*height), control1: CGPoint(x: 0.84314*width, y: 0.35343*height), control2: CGPoint(x: 0.77165*width, y: 0.40451*height))
        path.addCurve(to: CGPoint(x: 0.53861*width, y: 0.24199*height), control1: CGPoint(x: 0.63195*width, y: 0.41531*height), control2: CGPoint(x: 0.54482*width, y: 0.33638*height))
        path.addCurve(to: CGPoint(x: 0.57927*width, y: 0.10023*height), control1: CGPoint(x: 0.5348*width, y: 0.18403*height), control2: CGPoint(x: 0.56154*width, y: 0.13364*height))
        path.addCurve(to: CGPoint(x: 0.66436*width, y: 0.0035*height), control1: CGPoint(x: 0.59699*width, y: 0.06683*height), control2: CGPoint(x: 0.62318*width, y: 0.01747*height))
        path.addCurve(to: CGPoint(x: 0.83849*width, y: 0.17056*height), control1: CGPoint(x: 0.73696*width, y: -0.02113*height), control2: CGPoint(x: 0.80984*width, y: 0.08948*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.83653*width, y: 0.38633*height))
        path.addCurve(to: CGPoint(x: 0.85915*width, y: 0.37685*height), control1: CGPoint(x: 0.84746*width, y: 0.38213*height), control2: CGPoint(x: 0.85928*width, y: 0.37747*height))
        path.addCurve(to: CGPoint(x: 0.59925*width, y: 0.46615*height), control1: CGPoint(x: 0.85872*width, y: 0.37482*height), control2: CGPoint(x: 0.73031*width, y: 0.41017*height))
        path.addCurve(to: CGPoint(x: 0.33942*width, y: 0.59467*height), control1: CGPoint(x: 0.44641*width, y: 0.53145*height), control2: CGPoint(x: 0.43665*width, y: 0.56216*height))
        path.addCurve(to: CGPoint(x: 0.0495*width, y: 0.61856*height), control1: CGPoint(x: 0.2749*width, y: 0.61625*height), control2: CGPoint(x: 0.17773*width, y: 0.63666*height))
        path.addCurve(to: CGPoint(x: 0.00095*width, y: 0.69944*height), control1: CGPoint(x: 0.017*width, y: 0.62815*height), control2: CGPoint(x: -0.00492*width, y: 0.66466*height))
        path.addCurve(to: CGPoint(x: 0.07089*width, y: 0.74536*height), control1: CGPoint(x: 0.00683*width, y: 0.73431*height), control2: CGPoint(x: 0.03831*width, y: 0.75498*height))
        path.addLine(to: CGPoint(x: 0.85791*width, y: 0.51312*height))
        path.addCurve(to: CGPoint(x: 0.96219*width, y: 0.45994*height), control1: CGPoint(x: 0.90686*width, y: 0.49863*height), control2: CGPoint(x: 0.94109*width, y: 0.47636*height))
        path.addCurve(to: CGPoint(x: width, y: 0.41234*height), control1: CGPoint(x: 0.99911*width, y: 0.43119*height), control2: CGPoint(x: 1.00012*width, y: 0.41698*height))
        path.addCurve(to: CGPoint(x: 0.95968*width, y: 0.37519*height), control1: CGPoint(x: 0.99945*width, y: 0.39116*height), control2: CGPoint(x: 0.97065*width, y: 0.3796*height))
        path.addCurve(to: CGPoint(x: 0.83651*width, y: 0.38631*height), control1: CGPoint(x: 0.91302*width, y: 0.35646*height), control2: CGPoint(x: 0.86361*width, y: 0.37374*height))
        path.addLine(to: CGPoint(x: 0.83653*width, y: 0.38633*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.39258*width, y: 0.83633*height))
        path.addCurve(to: CGPoint(x: 0.31349*width, y: 0.9942*height), control1: CGPoint(x: 0.40246*width, y: 0.90174*height), control2: CGPoint(x: 0.36146*width, y: 0.97483*height))
        path.addCurve(to: CGPoint(x: 0.20256*width, y: 0.94276*height), control1: CGPoint(x: 0.27207*width, y: 1.01092*height), control2: CGPoint(x: 0.21746*width, y: 0.99081*height))
        path.addCurve(to: CGPoint(x: 0.20213*width, y: 0.88169*height), control1: CGPoint(x: 0.19673*width, y: 0.92395*height), control2: CGPoint(x: 0.19889*width, y: 0.90701*height))
        path.addCurve(to: CGPoint(x: 0.28122*width, y: 0.72382*height), control1: CGPoint(x: 0.20288*width, y: 0.87585*height), control2: CGPoint(x: 0.2218*width, y: 0.73305*height))
        path.addCurve(to: CGPoint(x: 0.33144*width, y: 0.74245*height), control1: CGPoint(x: 0.3014*width, y: 0.72068*height), control2: CGPoint(x: 0.31823*width, y: 0.73287*height))
        path.addCurve(to: CGPoint(x: 0.39258*width, y: 0.83633*height), control1: CGPoint(x: 0.34332*width, y: 0.75106*height), control2: CGPoint(x: 0.38417*width, y: 0.78067*height))
        path.addLine(to: CGPoint(x: 0.39258*width, y: 0.83633*height))
        path.closeSubpath()
        
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .safety, weight: .light)
        ShapeHomeRepresentable(shape: .safety, weight: .dark)
    }
    
})

