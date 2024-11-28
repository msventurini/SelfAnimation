//
//  Bravery.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit

extension SelfShape {
    static func braveryShape(rect: CGRect) -> CGPath{
        
        
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.33662*width, y: 0.99215*height))
        path.addCurve(to: CGPoint(x: 0.00002*width, y: 0.69903*height), control1: CGPoint(x: 0.30048*width, y: 1.00916*height), control2: CGPoint(x: -0.00293*width, y: 0.87017*height))
        path.addCurve(to: CGPoint(x: 0.04409*width, y: 0.57103*height), control1: CGPoint(x: 0.00042*width, y: 0.6763*height), control2: CGPoint(x: 0.00668*width, y: 0.62578*height))
        path.addCurve(to: CGPoint(x: 0.17833*width, y: 0.42383*height), control1: CGPoint(x: 0.08939*width, y: 0.50477*height), control2: CGPoint(x: 0.13854*width, y: 0.49344*height))
        path.addCurve(to: CGPoint(x: 0.22039*width, y: 0.3176*height), control1: CGPoint(x: 0.21397*width, y: 0.36149*height), control2: CGPoint(x: 0.20454*width, y: 0.31807*height))
        path.addCurve(to: CGPoint(x: 0.26247*width, y: 0.42768*height), control1: CGPoint(x: 0.2383*width, y: 0.31706*height), control2: CGPoint(x: 0.26746*width, y: 0.37191*height))
        path.addCurve(to: CGPoint(x: 0.24644*width, y: 0.49424*height), control1: CGPoint(x: 0.25876*width, y: 0.46909*height), control2: CGPoint(x: 0.23799*width, y: 0.49133*height))
        path.addCurve(to: CGPoint(x: 0.39069*width, y: 0.36112*height), control1: CGPoint(x: 0.26122*width, y: 0.49932*height), control2: CGPoint(x: 0.35439*width, y: 0.44151*height))
        path.addCurve(to: CGPoint(x: 0.3967*width, y: 0.16528*height), control1: CGPoint(x: 0.42971*width, y: 0.2747*height), control2: CGPoint(x: 0.36502*width, y: 0.24634*height))
        path.addCurve(to: CGPoint(x: 0.6191*width, y: 0.00144*height), control1: CGPoint(x: 0.43618*width, y: 0.0643*height), control2: CGPoint(x: 0.58338*width, y: -0.01148*height))
        path.addCurve(to: CGPoint(x: 0.59707*width, y: 0.11791*height), control1: CGPoint(x: 0.64332*width, y: 0.01019*height), control2: CGPoint(x: 0.60113*width, y: 0.05423*height))
        path.addCurve(to: CGPoint(x: 0.97774*width, y: 0.59407*height), control1: CGPoint(x: 0.58541*width, y: 0.3007*height), control2: CGPoint(x: 0.90624*width, y: 0.35764*height))
        path.addCurve(to: CGPoint(x: 0.9597*width, y: 0.77455*height), control1: CGPoint(x: 1.00429*width, y: 0.68188*height), control2: CGPoint(x: 0.98026*width, y: 0.74089*height))
        path.addCurve(to: CGPoint(x: 0.77137*width, y: 0.90895*height), control1: CGPoint(x: 0.90832*width, y: 0.85867*height), control2: CGPoint(x: 0.7965*width, y: 0.91885*height))
        path.addCurve(to: CGPoint(x: 0.81545*width, y: 0.74511*height), control1: CGPoint(x: 0.74621*width, y: 0.89903*height), control2: CGPoint(x: 0.84316*width, y: 0.83273*height))
        path.addCurve(to: CGPoint(x: 0.64715*width, y: 0.54799*height), control1: CGPoint(x: 0.78768*width, y: 0.65731*height), control2: CGPoint(x: 0.66493*width, y: 0.64361*height))
        path.addCurve(to: CGPoint(x: 0.65316*width, y: 0.45072*height), control1: CGPoint(x: 0.63744*width, y: 0.49572*height), control2: CGPoint(x: 0.66544*width, y: 0.45306*height))
        path.addCurve(to: CGPoint(x: 0.58504*width, y: 0.53264*height), control1: CGPoint(x: 0.64101*width, y: 0.44839*height), control2: CGPoint(x: 0.59906*width, y: 0.48743*height))
        path.addCurve(to: CGPoint(x: 0.67119*width, y: 0.77967*height), control1: CGPoint(x: 0.55271*width, y: 0.63694*height), control2: CGPoint(x: 0.69695*width, y: 0.68411*height))
        path.addCurve(to: CGPoint(x: 0.53294*width, y: 0.90128*height), control1: CGPoint(x: 0.65068*width, y: 0.8558*height), control2: CGPoint(x: 0.54172*width, y: 0.90494*height))
        path.addCurve(to: CGPoint(x: 0.58103*width, y: 0.7976*height), control1: CGPoint(x: 0.52612*width, y: 0.89842*height), control2: CGPoint(x: 0.5727*width, y: 0.8604*height))
        path.addCurve(to: CGPoint(x: 0.567*width, y: 0.7272*height), control1: CGPoint(x: 0.58423*width, y: 0.77343*height), control2: CGPoint(x: 0.58679*width, y: 0.75068*height))
        path.addCurve(to: CGPoint(x: 0.43878*width, y: 0.676*height), control1: CGPoint(x: 0.54268*width, y: 0.69831*height), control2: CGPoint(x: 0.4908*width, y: 0.67583*height))
        path.addCurve(to: CGPoint(x: 0.27449*width, y: 0.77712*height), control1: CGPoint(x: 0.35773*width, y: 0.67626*height), control2: CGPoint(x: 0.29653*width, y: 0.73399*height))
        path.addCurve(to: CGPoint(x: 0.3366*width, y: 0.99216*height), control1: CGPoint(x: 0.22013*width, y: 0.88352*height), control2: CGPoint(x: 0.36412*width, y: 0.9792*height))
        path.addLine(to: CGPoint(x: 0.33662*width, y: 0.99215*height))
        path.closeSubpath()
        return path
        
    }
}
