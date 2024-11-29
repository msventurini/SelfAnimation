//
//  Contentment.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI



extension SelfShape {
    
    static func contentmentTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -4).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    

    
    static func contentmentPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        path.move(to: CGPoint(x: 0.02993*width, y: 0.21271*height))
        path.addCurve(to: CGPoint(x: 0.29339*width, y: 0.2053*height), control1: CGPoint(x: 0.17345*width, y: 0.17408*height), control2: CGPoint(x: 0.2452*width, y: 0.15479*height))
        path.addCurve(to: CGPoint(x: 0.38885*width, y: 0.38328*height), control1: CGPoint(x: 0.31709*width, y: 0.23013*height), control2: CGPoint(x: 0.30247*width, y: 0.23281*height))
        path.addCurve(to: CGPoint(x: 0.49263*width, y: 0.5251*height), control1: CGPoint(x: 0.45951*width, y: 0.50636*height), control2: CGPoint(x: 0.47791*width, y: 0.51959*height))
        path.addCurve(to: CGPoint(x: 0.61516*width, y: 0.4185*height), control1: CGPoint(x: 0.49971*width, y: 0.52774*height), control2: CGPoint(x: 0.57234*width, y: 0.55186*height))
        path.addCurve(to: CGPoint(x: 0.63356*width, y: 0.11354*height), control1: CGPoint(x: 0.64416*width, y: 0.32824*height), control2: CGPoint(x: 0.65589*width, y: 0.17698*height))
        path.addCurve(to: CGPoint(x: 0.60163*width, y: 0.08481*height), control1: CGPoint(x: 0.62596*width, y: 0.09191*height), control2: CGPoint(x: 0.61203*width, y: 0.07377*height))
        path.addCurve(to: CGPoint(x: 0.57524*width, y: 0.24145*height), control1: CGPoint(x: 0.58463*width, y: 0.10283*height), control2: CGPoint(x: 0.59278*width, y: 0.18214*height))
        path.addCurve(to: CGPoint(x: 0.49542*width, y: 0.30541*height), control1: CGPoint(x: 0.55466*width, y: 0.31107*height), control2: CGPoint(x: 0.51234*width, y: 0.30703*height))
        path.addCurve(to: CGPoint(x: 0.36247*width, y: 0.15616*height), control1: CGPoint(x: 0.44632*width, y: 0.30071*height), control2: CGPoint(x: 0.4237*width, y: 0.23845*height))
        path.addCurve(to: CGPoint(x: 0.2375*width, y: 0.02824*height), control1: CGPoint(x: 0.335*width, y: 0.11925*height), control2: CGPoint(x: 0.29172*width, y: 0.06109*height))
        path.addCurve(to: CGPoint(x: 0.02472*width, y: 0.0987*height), control1: CGPoint(x: 0.21082*width, y: 0.01208*height), control2: CGPoint(x: 0.0884*width, y: -0.05436*height))
        path.addCurve(to: CGPoint(x: 0.00077*width, y: 0.19882*height), control1: CGPoint(x: 0.02119*width, y: 0.10717*height), control2: CGPoint(x: -0.00477*width, y: 0.16957*height))
        path.addCurve(to: CGPoint(x: 0.02994*width, y: 0.21271*height), control1: CGPoint(x: 0.00471*width, y: 0.21958*height), control2: CGPoint(x: 0.02283*width, y: 0.21463*height))
        path.addLine(to: CGPoint(x: 0.02993*width, y: 0.21271*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.26678*width, y: 0.47194*height))
        path.addCurve(to: CGPoint(x: 0.3546*width, y: 0.87608*height), control1: CGPoint(x: 0.27278*width, y: 0.60536*height), control2: CGPoint(x: 0.30138*width, y: 0.76948*height))
        path.addCurve(to: CGPoint(x: 0.65243*width, y: 0.87608*height), control1: CGPoint(x: 0.44093*width, y: 1.04901*height), control2: CGPoint(x: 0.57352*width, y: 1.03342*height))
        path.addCurve(to: CGPoint(x: 0.75621*width, y: 0.52847*height), control1: CGPoint(x: 0.71751*width, y: 0.74629*height), control2: CGPoint(x: 0.693*width, y: 0.62584*height))
        path.addCurve(to: CGPoint(x: 0.99017*width, y: 0.39313*height), control1: CGPoint(x: 0.84578*width, y: 0.3905*height), control2: CGPoint(x: 0.95091*width, y: 0.54616*height))
        path.addCurve(to: CGPoint(x: 0.99815*width, y: 0.30137*height), control1: CGPoint(x: 0.99203*width, y: 0.38589*height), control2: CGPoint(x: 1.00466*width, y: 0.33668*height))
        path.addCurve(to: CGPoint(x: 0.91866*width, y: 0.26613*height), control1: CGPoint(x: 0.99331*width, y: 0.27508*height), control2: CGPoint(x: 0.97819*width, y: 0.25833*height))
        path.addCurve(to: CGPoint(x: 0.77774*width, y: 0.32267*height), control1: CGPoint(x: 0.8548*width, y: 0.27452*height), control2: CGPoint(x: 0.82245*width, y: 0.27878*height))
        path.addCurve(to: CGPoint(x: 0.67117*width, y: 0.49325*height), control1: CGPoint(x: 0.73848*width, y: 0.36123*height), control2: CGPoint(x: 0.7012*width, y: 0.39785*height))
        path.addCurve(to: CGPoint(x: 0.62604*width, y: 0.67771*height), control1: CGPoint(x: 0.64604*width, y: 0.57306*height), control2: CGPoint(x: 0.65236*width, y: 0.61026*height))
        path.addCurve(to: CGPoint(x: 0.53024*width, y: 0.79172*height), control1: CGPoint(x: 0.59064*width, y: 0.76847*height), control2: CGPoint(x: 0.54608*width, y: 0.78604*height))
        path.addCurve(to: CGPoint(x: 0.39973*width, y: 0.71293*height), control1: CGPoint(x: 0.52091*width, y: 0.79508*height), control2: CGPoint(x: 0.45666*width, y: 0.81562*height))
        path.addCurve(to: CGPoint(x: 0.31746*width, y: 0.47192*height), control1: CGPoint(x: 0.37393*width, y: 0.66639*height), control2: CGPoint(x: 0.35511*width, y: 0.60157*height))
        path.addCurve(to: CGPoint(x: 0.27234*width, y: 0.34398*height), control1: CGPoint(x: 0.29441*width, y: 0.39253*height), control2: CGPoint(x: 0.28105*width, y: 0.33573*height))
        path.addCurve(to: CGPoint(x: 0.26679*width, y: 0.47192*height), control1: CGPoint(x: 0.26149*width, y: 0.35427*height), control2: CGPoint(x: 0.26613*width, y: 0.45737*height))
        path.addLine(to: CGPoint(x: 0.26678*width, y: 0.47194*height))
        path.closeSubpath()
        
        
        
        return path
    }
}

#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .contentment, weight: .light)
        ShapeHomeRepresentable(shape: .contentment, weight: .dark)
    }
    
})

