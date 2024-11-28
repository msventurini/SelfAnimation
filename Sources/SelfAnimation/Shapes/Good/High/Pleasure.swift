//
//  Pleasure.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import SwiftUI
import UIKit


extension SelfShape {
    static func pleasureTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: 7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func pleasurePath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.move(to: CGPoint(x: 0.01188*width, y: 0.455*height))
                path.addLine(to: CGPoint(x: 0.32368*width, y: 0.455*height))
                path.addCurve(to: CGPoint(x: 0.33556*width, y: 0.46653*height), control1: CGPoint(x: 0.33025*width, y: 0.455*height), control2: CGPoint(x: 0.33556*width, y: 0.46014*height))
                path.addLine(to: CGPoint(x: 0.33556*width, y: 0.51896*height))
                path.addCurve(to: CGPoint(x: 0.32368*width, y: 0.53049*height), control1: CGPoint(x: 0.33556*width, y: 0.52534*height), control2: CGPoint(x: 0.33025*width, y: 0.53049*height))
                path.addLine(to: CGPoint(x: 0.01188*width, y: 0.53049*height))
                path.addCurve(to: CGPoint(x: 0, y: 0.51896*height), control1: CGPoint(x: 0.0053*width, y: 0.53049*height), control2: CGPoint(x: 0, y: 0.52534*height))
                path.addLine(to: CGPoint(x: 0, y: 0.46653*height))
                path.addCurve(to: CGPoint(x: 0.01188*width, y: 0.455*height), control1: CGPoint(x: 0, y: 0.46014*height), control2: CGPoint(x: 0.0053*width, y: 0.455*height))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.66642*width, y: 0.455*height))
                path.addLine(to: CGPoint(x: 0.97822*width, y: 0.455*height))
                path.addCurve(to: CGPoint(x: 0.9901*width, y: 0.46653*height), control1: CGPoint(x: 0.9848*width, y: 0.455*height), control2: CGPoint(x: 0.9901*width, y: 0.46014*height))
                path.addLine(to: CGPoint(x: 0.9901*width, y: 0.51896*height))
                path.addCurve(to: CGPoint(x: 0.97822*width, y: 0.53049*height), control1: CGPoint(x: 0.9901*width, y: 0.52534*height), control2: CGPoint(x: 0.9848*width, y: 0.53049*height))
                path.addLine(to: CGPoint(x: 0.66642*width, y: 0.53049*height))
                path.addCurve(to: CGPoint(x: 0.65454*width, y: 0.51896*height), control1: CGPoint(x: 0.65984*width, y: 0.53049*height), control2: CGPoint(x: 0.65454*width, y: 0.52534*height))
                path.addLine(to: CGPoint(x: 0.65454*width, y: 0.46653*height))
                path.addCurve(to: CGPoint(x: 0.66642*width, y: 0.455*height), control1: CGPoint(x: 0.65454*width, y: 0.46014*height), control2: CGPoint(x: 0.65984*width, y: 0.455*height))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.45472*width, y: 0))
                path.addLine(to: CGPoint(x: 0.50873*width, y: 0))
                path.addCurve(to: CGPoint(x: 0.52061*width, y: 0.01153*height), control1: CGPoint(x: 0.51532*width, y: 0), control2: CGPoint(x: 0.52061*width, y: 0.00515*height))
                path.addLine(to: CGPoint(x: 0.52061*width, y: 0.31417*height))
                path.addCurve(to: CGPoint(x: 0.50873*width, y: 0.3257*height), control1: CGPoint(x: 0.52061*width, y: 0.32056*height), control2: CGPoint(x: 0.51532*width, y: 0.3257*height))
                path.addLine(to: CGPoint(x: 0.45472*width, y: 0.3257*height))
                path.addCurve(to: CGPoint(x: 0.44284*width, y: 0.31417*height), control1: CGPoint(x: 0.44814*width, y: 0.3257*height), control2: CGPoint(x: 0.44284*width, y: 0.32056*height))
                path.addLine(to: CGPoint(x: 0.44284*width, y: 0.01153*height))
                path.addCurve(to: CGPoint(x: 0.45472*width, y: 0), control1: CGPoint(x: 0.44284*width, y: 0.00515*height), control2: CGPoint(x: 0.44814*width, y: 0))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.45472*width, y: 0.66469*height))
                path.addLine(to: CGPoint(x: 0.50873*width, y: 0.66469*height))
                path.addCurve(to: CGPoint(x: 0.52061*width, y: 0.67622*height), control1: CGPoint(x: 0.51532*width, y: 0.66469*height), control2: CGPoint(x: 0.52061*width, y: 0.66983*height))
                path.addLine(to: CGPoint(x: 0.52061*width, y: 0.97886*height))
                path.addCurve(to: CGPoint(x: 0.50873*width, y: 0.99039*height), control1: CGPoint(x: 0.52061*width, y: 0.98524*height), control2: CGPoint(x: 0.51532*width, y: 0.99039*height))
                path.addLine(to: CGPoint(x: 0.45472*width, y: 0.99039*height))
                path.addCurve(to: CGPoint(x: 0.44284*width, y: 0.97886*height), control1: CGPoint(x: 0.44814*width, y: 0.99039*height), control2: CGPoint(x: 0.44284*width, y: 0.98524*height))
                path.addLine(to: CGPoint(x: 0.44284*width, y: 0.67622*height))
                path.addCurve(to: CGPoint(x: 0.45472*width, y: 0.66469*height), control1: CGPoint(x: 0.44284*width, y: 0.66983*height), control2: CGPoint(x: 0.44814*width, y: 0.66469*height))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.5761*width, y: 0.3443*height))
                path.addLine(to: CGPoint(x: 0.79658*width, y: 0.1303*height))
                path.addCurve(to: CGPoint(x: 0.81338*width, y: 0.1303*height), control1: CGPoint(x: 0.80123*width, y: 0.12578*height), control2: CGPoint(x: 0.80873*width, y: 0.12578*height))
                path.addLine(to: CGPoint(x: 0.85157*width, y: 0.16737*height))
                path.addCurve(to: CGPoint(x: 0.85157*width, y: 0.18368*height), control1: CGPoint(x: 0.85622*width, y: 0.17189*height), control2: CGPoint(x: 0.85622*width, y: 0.17916*height))
                path.addLine(to: CGPoint(x: 0.6311*width, y: 0.39767*height))
                path.addCurve(to: CGPoint(x: 0.61429*width, y: 0.39768*height), control1: CGPoint(x: 0.62644*width, y: 0.40219*height), control2: CGPoint(x: 0.61895*width, y: 0.40219*height))
                path.addLine(to: CGPoint(x: 0.5761*width, y: 0.36061*height))
                path.addCurve(to: CGPoint(x: 0.5761*width, y: 0.3443*height), control1: CGPoint(x: 0.57145*width, y: 0.35609*height), control2: CGPoint(x: 0.57145*width, y: 0.34881*height))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.57611*width, y: 0.61888*height))
                path.addLine(to: CGPoint(x: 0.6143*width, y: 0.58181*height))
                path.addCurve(to: CGPoint(x: 0.6311*width, y: 0.58181*height), control1: CGPoint(x: 0.61896*width, y: 0.57729*height), control2: CGPoint(x: 0.62645*width, y: 0.57729*height))
                path.addLine(to: CGPoint(x: 0.85157*width, y: 0.79581*height))
                path.addCurve(to: CGPoint(x: 0.85157*width, y: 0.81212*height), control1: CGPoint(x: 0.85622*width, y: 0.80033*height), control2: CGPoint(x: 0.85622*width, y: 0.8076*height))
                path.addLine(to: CGPoint(x: 0.81338*width, y: 0.84919*height))
                path.addCurve(to: CGPoint(x: 0.79658*width, y: 0.84919*height), control1: CGPoint(x: 0.80873*width, y: 0.8537*height), control2: CGPoint(x: 0.80123*width, y: 0.8537*height))
                path.addLine(to: CGPoint(x: 0.57611*width, y: 0.63519*height))
                path.addCurve(to: CGPoint(x: 0.57611*width, y: 0.61888*height), control1: CGPoint(x: 0.57145*width, y: 0.63067*height), control2: CGPoint(x: 0.57145*width, y: 0.6234*height))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.12893*width, y: 0.18484*height))
                path.addLine(to: CGPoint(x: 0.16713*width, y: 0.14777*height))
                path.addCurve(to: CGPoint(x: 0.18393*width, y: 0.14777*height), control1: CGPoint(x: 0.17178*width, y: 0.14326*height), control2: CGPoint(x: 0.17928*width, y: 0.14326*height))
                path.addLine(to: CGPoint(x: 0.4044*width, y: 0.36177*height))
                path.addCurve(to: CGPoint(x: 0.4044*width, y: 0.37808*height), control1: CGPoint(x: 0.40905*width, y: 0.36629*height), control2: CGPoint(x: 0.40905*width, y: 0.37356*height))
                path.addLine(to: CGPoint(x: 0.36621*width, y: 0.41515*height))
                path.addCurve(to: CGPoint(x: 0.34941*width, y: 0.41515*height), control1: CGPoint(x: 0.36155*width, y: 0.41967*height), control2: CGPoint(x: 0.35406*width, y: 0.41967*height))
                path.addLine(to: CGPoint(x: 0.12893*width, y: 0.20115*height))
                path.addCurve(to: CGPoint(x: 0.12893*width, y: 0.18484*height), control1: CGPoint(x: 0.12428*width, y: 0.19664*height), control2: CGPoint(x: 0.12428*width, y: 0.18936*height))
                path.closeSubpath()
                path.move(to: CGPoint(x: 0.12541*width, y: 0.80177*height))
                path.addLine(to: CGPoint(x: 0.34588*width, y: 0.58778*height))
                path.addCurve(to: CGPoint(x: 0.36269*width, y: 0.58778*height), control1: CGPoint(x: 0.35054*width, y: 0.58326*height), control2: CGPoint(x: 0.35803*width, y: 0.58326*height))
                path.addLine(to: CGPoint(x: 0.40088*width, y: 0.62485*height))
                path.addCurve(to: CGPoint(x: 0.40088*width, y: 0.64116*height), control1: CGPoint(x: 0.40553*width, y: 0.62936*height), control2: CGPoint(x: 0.40553*width, y: 0.63664*height))
                path.addLine(to: CGPoint(x: 0.18041*width, y: 0.85515*height))
                path.addCurve(to: CGPoint(x: 0.1636*width, y: 0.85515*height), control1: CGPoint(x: 0.17575*width, y: 0.85967*height), control2: CGPoint(x: 0.16825*width, y: 0.85967*height))
                path.addLine(to: CGPoint(x: 0.12541*width, y: 0.81809*height))
                path.addCurve(to: CGPoint(x: 0.12541*width, y: 0.80177*height), control1: CGPoint(x: 0.12076*width, y: 0.81357*height), control2: CGPoint(x: 0.12076*width, y: 0.80629*height))
                path.closeSubpath()
        return path
    }
}
