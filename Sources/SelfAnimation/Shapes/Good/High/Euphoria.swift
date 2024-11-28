//
//  File.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI
import UIKit



extension SelfShape {
    static func euphoriaTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -192).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    static func euphoriaShape(rect: CGRect) -> CGPath{
        
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.move(to: CGPoint(x: 0.52928*width, y: 0.20446*height))
        path.addLine(to: CGPoint(x: 0.65981*width, y: 0.01936*height))
        path.addCurve(to: CGPoint(x: 0.72525*width, y: 0.04651*height), control1: CGPoint(x: 0.68213*width, y: -0.01231*height), control2: CGPoint(x: 0.73182*width, y: 0.00831*height))
        path.addLine(to: CGPoint(x: 0.68685*width, y: 0.26984*height))
        path.addCurve(to: CGPoint(x: 0.7288*width, y: 0.31185*height), control1: CGPoint(x: 0.68258*width, y: 0.29459*height), control2: CGPoint(x: 0.70408*width, y: 0.31612*height))
        path.addLine(to: CGPoint(x: 0.9518*width, y: 0.27338*height))
        path.addCurve(to: CGPoint(x: 0.97891*width, y: 0.33893*height), control1: CGPoint(x: 0.98994*width, y: 0.2668*height), control2: CGPoint(x: 1.01053*width, y: 0.31657*height))
        path.addLine(to: CGPoint(x: 0.79407*width, y: 0.46965*height))
        path.addCurve(to: CGPoint(x: 0.79407*width, y: 0.52906*height), control1: CGPoint(x: 0.77358*width, y: 0.48414*height), control2: CGPoint(x: 0.77358*width, y: 0.51457*height))
        path.addLine(to: CGPoint(x: 0.97891*width, y: 0.65978*height))
        path.addCurve(to: CGPoint(x: 0.9518*width, y: 0.72532*height), control1: CGPoint(x: 1.01053*width, y: 0.68213*height), control2: CGPoint(x: 0.98994*width, y: 0.7319*height))
        path.addLine(to: CGPoint(x: 0.7288*width, y: 0.68686*height))
        path.addCurve(to: CGPoint(x: 0.68685*width, y: 0.72886*height), control1: CGPoint(x: 0.70408*width, y: 0.68259*height), control2: CGPoint(x: 0.68258*width, y: 0.70411*height))
        path.addLine(to: CGPoint(x: 0.72525*width, y: 0.95219*height))
        path.addCurve(to: CGPoint(x: 0.65981*width, y: 0.97934*height), control1: CGPoint(x: 0.73182*width, y: 0.99038*height), control2: CGPoint(x: 0.68213*width, y: 1.011*height))
        path.addLine(to: CGPoint(x: 0.52928*width, y: 0.79423*height))
        path.addCurve(to: CGPoint(x: 0.46995*width, y: 0.79423*height), control1: CGPoint(x: 0.51481*width, y: 0.77372*height), control2: CGPoint(x: 0.48442*width, y: 0.77372*height))
        path.addLine(to: CGPoint(x: 0.33942*width, y: 0.97934*height))
        path.addCurve(to: CGPoint(x: 0.27397*width, y: 0.95219*height), control1: CGPoint(x: 0.3171*width, y: 1.011*height), control2: CGPoint(x: 0.2674*width, y: 0.99038*height))
        path.addLine(to: CGPoint(x: 0.31238*width, y: 0.72886*height))
        path.addCurve(to: CGPoint(x: 0.27044*width, y: 0.68686*height), control1: CGPoint(x: 0.31665*width, y: 0.70411*height), control2: CGPoint(x: 0.29515*width, y: 0.68259*height))
        path.addLine(to: CGPoint(x: 0.04743*width, y: 0.72532*height))
        path.addCurve(to: CGPoint(x: 0.02032*width, y: 0.65978*height), control1: CGPoint(x: 0.00929*width, y: 0.7319*height), control2: CGPoint(x: -0.0113*width, y: 0.68213*height))
        path.addLine(to: CGPoint(x: 0.20515*width, y: 0.52906*height))
        path.addCurve(to: CGPoint(x: 0.20515*width, y: 0.46965*height), control1: CGPoint(x: 0.22565*width, y: 0.51457*height), control2: CGPoint(x: 0.22565*width, y: 0.48414*height))
        path.addLine(to: CGPoint(x: 0.02032*width, y: 0.33893*height))
        path.addCurve(to: CGPoint(x: 0.04743*width, y: 0.27338*height), control1: CGPoint(x: -0.0113*width, y: 0.31657*height), control2: CGPoint(x: 0.00929*width, y: 0.2668*height))
        path.addLine(to: CGPoint(x: 0.27044*width, y: 0.31185*height))
        path.addCurve(to: CGPoint(x: 0.31238*width, y: 0.26984*height), control1: CGPoint(x: 0.29515*width, y: 0.31612*height), control2: CGPoint(x: 0.31665*width, y: 0.29459*height))
        path.addLine(to: CGPoint(x: 0.27397*width, y: 0.04651*height))
        path.addCurve(to: CGPoint(x: 0.33942*width, y: 0.01936*height), control1: CGPoint(x: 0.2674*width, y: 0.00831*height), control2: CGPoint(x: 0.3171*width, y: -0.01231*height))
        path.addLine(to: CGPoint(x: 0.46995*width, y: 0.20446*height))
        path.addCurve(to: CGPoint(x: 0.52928*width, y: 0.20446*height), control1: CGPoint(x: 0.48442*width, y: 0.22499*height), control2: CGPoint(x: 0.51481*width, y: 0.22499*height))
        path.closeSubpath()
        
        return path
        
    }
}

#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .euphoria, weight: .light)
        ShapeHomeRepresentable(shape: .euphoria, weight: .dark)
    }
    
})

