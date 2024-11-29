//
//  Calm.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI




extension SelfShape {
    
    static func calmTransform() -> CATransform3D {
        
        
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
    

    
    static func calmPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.46325*width, y: 0.97518*height))
        path.addCurve(to: CGPoint(x: 0.27256*width, y: 0.79348*height), control1: CGPoint(x: 0.39832*width, y: 0.87872*height), control2: CGPoint(x: 0.32172*width, y: 0.82323*height))
        path.addCurve(to: CGPoint(x: 0.07098*width, y: 0.73368*height), control1: CGPoint(x: 0.20923*width, y: 0.75516*height), control2: CGPoint(x: 0.1351*width, y: 0.7103*height))
        path.addCurve(to: CGPoint(x: 0.00015*width, y: 0.82339*height), control1: CGPoint(x: 0.03267*width, y: 0.74765*height), control2: CGPoint(x: 0.00253*width, y: 0.78429*height))
        path.addCurve(to: CGPoint(x: 0.04647*width, y: 0.9108*height), control1: CGPoint(x: -0.00199*width, y: 0.8588*height), control2: CGPoint(x: 0.01889*width, y: 0.89199*height))
        path.addCurve(to: CGPoint(x: 0.30253*width, y: 0.89929*height), control1: CGPoint(x: 0.06298*width, y: 0.92205*height), control2: CGPoint(x: 0.11433*width, y: 0.95026*height))
        path.addCurve(to: CGPoint(x: 0.65122*width, y: 0.77739*height), control1: CGPoint(x: 0.47102*width, y: 0.85365*height), control2: CGPoint(x: 0.48741*width, y: 0.81547*height))
        path.addCurve(to: CGPoint(x: 0.88004*width, y: 0.7728*height), control1: CGPoint(x: 0.72361*width, y: 0.76057*height), control2: CGPoint(x: 0.80121*width, y: 0.74924*height))
        path.addCurve(to: CGPoint(x: 0.97539*width, y: 0.8326*height), control1: CGPoint(x: 0.94588*width, y: 0.79247*height), control2: CGPoint(x: 0.96914*width, y: 0.82349*height))
        path.addCurve(to: CGPoint(x: 0.98901*width, y: 0.9062*height), control1: CGPoint(x: 0.98174*width, y: 0.84186*height), control2: CGPoint(x: 1.00434*width, y: 0.87488*height))
        path.addCurve(to: CGPoint(x: 0.91273*width, y: 0.9522*height), control1: CGPoint(x: 0.97598*width, y: 0.93283*height), control2: CGPoint(x: 0.94299*width, y: 0.94293*height))
        path.addCurve(to: CGPoint(x: 0.79015*width, y: 0.96141*height), control1: CGPoint(x: 0.89219*width, y: 0.95851*height), control2: CGPoint(x: 0.84978*width, y: 0.96867*height))
        path.addCurve(to: CGPoint(x: 0.65667*width, y: 0.91771*height), control1: CGPoint(x: 0.7297*width, y: 0.95404*height), control2: CGPoint(x: 0.68701*width, y: 0.93306*height))
        path.addCurve(to: CGPoint(x: 0.4115*width, y: 0.77971*height), control1: CGPoint(x: 0.52703*width, y: 0.8521*height), control2: CGPoint(x: 0.4622*width, y: 0.81928*height))
        path.addCurve(to: CGPoint(x: 0.22082*width, y: 0.53591*height), control1: CGPoint(x: 0.30596*width, y: 0.69735*height), control2: CGPoint(x: 0.21889*width, y: 0.6294*height))
        path.addCurve(to: CGPoint(x: 0.29164*width, y: 0.39101*height), control1: CGPoint(x: 0.22219*width, y: 0.46891*height), control2: CGPoint(x: 0.26869*width, y: 0.41675*height))
        path.addCurve(to: CGPoint(x: 0.4905*width, y: 0.24152*height), control1: CGPoint(x: 0.35473*width, y: 0.32026*height), control2: CGPoint(x: 0.40153*width, y: 0.3313*height))
        path.addCurve(to: CGPoint(x: 0.56678*width, y: 0.11962*height), control1: CGPoint(x: 0.50048*width, y: 0.23143*height), control2: CGPoint(x: 0.54404*width, y: 0.18658*height))
        path.addCurve(to: CGPoint(x: 0.5695*width, y: 0.04601*height), control1: CGPoint(x: 0.58144*width, y: 0.07642*height), control2: CGPoint(x: 0.57598*width, y: 0.0578*height))
        path.addCurve(to: CGPoint(x: 0.48505*width, y: 0.00002*height), control1: CGPoint(x: 0.55525*width, y: 0.02004*height), control2: CGPoint(x: 0.52149*width, y: 0.00063*height))
        path.addCurve(to: CGPoint(x: 0.39243*width, y: 0.05062*height), control1: CGPoint(x: 0.43002*width, y: -0.00093*height), control2: CGPoint(x: 0.39907*width, y: 0.0415*height))
        path.addCurve(to: CGPoint(x: 0.37608*width, y: 0.13803*height), control1: CGPoint(x: 0.36686*width, y: 0.08569*height), control2: CGPoint(x: 0.37313*width, y: 0.1224*height))
        path.addCurve(to: CGPoint(x: 0.43874*width, y: 0.23692*height), control1: CGPoint(x: 0.38027*width, y: 0.16018*height), control2: CGPoint(x: 0.38962*width, y: 0.17855*height))
        path.addCurve(to: CGPoint(x: 0.58856*width, y: 0.38872*height), control1: CGPoint(x: 0.51141*width, y: 0.32328*height), control2: CGPoint(x: 0.54775*width, y: 0.36646*height))
        path.addCurve(to: CGPoint(x: 0.66756*width, y: 0.43933*height), control1: CGPoint(x: 0.62037*width, y: 0.40608*height), control2: CGPoint(x: 0.64436*width, y: 0.41237*height))
        path.addCurve(to: CGPoint(x: 0.70025*width, y: 0.51523*height), control1: CGPoint(x: 0.69336*width, y: 0.4693*height), control2: CGPoint(x: 0.69837*width, y: 0.5018*height))
        path.addCurve(to: CGPoint(x: 0.69208*width, y: 0.58192*height), control1: CGPoint(x: 0.70392*width, y: 0.54125*height), control2: CGPoint(x: 0.70685*width, y: 0.56216*height))
        path.addCurve(to: CGPoint(x: 0.60491*width, y: 0.61643*height), control1: CGPoint(x: 0.66633*width, y: 0.61642*height), control2: CGPoint(x: 0.60984*width, y: 0.61649*height))
        path.addCurve(to: CGPoint(x: 0.50411*width, y: 0.56813*height), control1: CGPoint(x: 0.55025*width, y: 0.6158*height), control2: CGPoint(x: 0.51572*width, y: 0.58012*height))
        path.addCurve(to: CGPoint(x: 0.46597*width, y: 0.47152*height), control1: CGPoint(x: 0.46691*width, y: 0.52967*height), control2: CGPoint(x: 0.46565*width, y: 0.48596*height))
        
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .calm, weight: .light)
        ShapeHomeRepresentable(shape: .calm, weight: .dark)
    }
    
})

