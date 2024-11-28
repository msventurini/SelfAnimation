//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit
import SwiftUI

extension SelfShape {
    static func tensionTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 19/30, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func tensionPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.64124*width, y: 0.00052*height))
        path.addLine(to: CGPoint(x: 0.01299*width, y: 0.14807*height))
        path.addCurve(to: CGPoint(x: 0.00105*width, y: 0.16925*height), control1: CGPoint(x: 0.0031*width, y: 0.1504*height), control2: CGPoint(x: -0.00245*width, y: 0.16027*height))
        path.addCurve(to: CGPoint(x: 0.26088*width, y: 0.5258*height), control1: CGPoint(x: 0.05851*width, y: 0.21314*height), control2: CGPoint(x: 0.19382*width, y: 0.32863*height))
        path.addCurve(to: CGPoint(x: 0.28469*width, y: 0.89556*height), control1: CGPoint(x: 0.31603*width, y: 0.68793*height), control2: CGPoint(x: 0.29841*width, y: 0.82709*height))
        path.addCurve(to: CGPoint(x: 0.28939*width, y: 0.90204*height), control1: CGPoint(x: 0.28522*width, y: 0.8969*height), control2: CGPoint(x: 0.2865*width, y: 0.89963*height))
        path.addCurve(to: CGPoint(x: 0.29679*width, y: 0.90567*height), control1: CGPoint(x: 0.29147*width, y: 0.90378*height), control2: CGPoint(x: 0.29399*width, y: 0.90505*height))
        path.addLine(to: CGPoint(x: 0.67348*width, y: 0.99021*height))
        path.addCurve(to: CGPoint(x: 0.69144*width, y: 0.98385*height), control1: CGPoint(x: 0.68029*width, y: 0.99174*height), control2: CGPoint(x: 0.6874*width, y: 0.98921*height))
        path.addCurve(to: CGPoint(x: 0.73164*width, y: 0.72951*height), control1: CGPoint(x: 0.68574*width, y: 0.96323*height), control2: CGPoint(x: 0.65526*width, y: 0.84471*height))
        path.addCurve(to: CGPoint(x: 0.99642*width, y: 0.57814*height), control1: CGPoint(x: 0.82042*width, y: 0.59558*height), control2: CGPoint(x: 0.97831*width, y: 0.57968*height))
        path.addCurve(to: CGPoint(x: 0.99748*width, y: 0.56116*height), control1: CGPoint(x: 1.00017*width, y: 0.57314*height), control2: CGPoint(x: 1.00059*width, y: 0.56654*height))
        path.addCurve(to: CGPoint(x: 0.98176*width, y: 0.55275*height), control1: CGPoint(x: 0.99457*width, y: 0.55611*height), control2: CGPoint(x: 0.98885*width, y: 0.55249*height))
        path.addLine(to: CGPoint(x: 0.46742*width, y: 0.5718*height))
        path.addCurve(to: CGPoint(x: 0.45049*width, y: 0.5608*height), control1: CGPoint(x: 0.4598*width, y: 0.57208*height), control2: CGPoint(x: 0.45291*width, y: 0.5676*height))
        path.addLine(to: CGPoint(x: 0.36028*width, y: 0.30601*height))
        path.addCurve(to: CGPoint(x: 0.36473*width, y: 0.28925*height), control1: CGPoint(x: 0.35818*width, y: 0.30008*height), control2: CGPoint(x: 0.35991*width, y: 0.29355*height))
        path.addLine(to: CGPoint(x: 0.65718*width, y: 0.02782*height))
        path.addCurve(to: CGPoint(x: 0.64124*width, y: 0.00052*height), control1: CGPoint(x: 0.66993*width, y: 0.01643*height), control2: CGPoint(x: 0.6583*width, y: -0.00348*height))
        path.closeSubpath()
        return path
    }
}
