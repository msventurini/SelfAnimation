//
//  Curiosity.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI

extension SelfShape {
    static func curiosityShape(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.6*width, y: 0.50007*height))
        path.addCurve(to: CGPoint(x: 0.50098*width, y: 0.6546*height), control1: CGPoint(x: 0.6*width, y: 0.58542*height), control2: CGPoint(x: 0.55567*width, y: 0.6546*height))
        path.addCurve(to: CGPoint(x: 0.40197*width, y: 0.50007*height), control1: CGPoint(x: 0.4463*width, y: 0.6546*height), control2: CGPoint(x: 0.40197*width, y: 0.58542*height))
        path.addCurve(to: CGPoint(x: 0.50098*width, y: 0.34554*height), control1: CGPoint(x: 0.40197*width, y: 0.41473*height), control2: CGPoint(x: 0.4463*width, y: 0.34554*height))
        path.addCurve(to: CGPoint(x: 0.6*width, y: 0.50007*height), control1: CGPoint(x: 0.55567*width, y: 0.34554*height), control2: CGPoint(x: 0.6*width, y: 0.41473*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.00495*width, y: 0.48828*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.00769*height), control1: CGPoint(x: 0.00495*width, y: 0.22287*height), control2: CGPoint(x: 0.2266*width, y: 0.00769*height))
        path.addCurve(to: CGPoint(x: 0.99509*width, y: 0.48828*height), control1: CGPoint(x: 0.78993*width, y: 0.00769*height), control2: CGPoint(x: 1.01985*width, y: 0.40609*height))
        path.addCurve(to: CGPoint(x: 0.79707*width, y: 0.513*height), control1: CGPoint(x: 0.98186*width, y: 0.53225*height), control2: CGPoint(x: 0.90501*width, y: 0.45698*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.96886*height), control1: CGPoint(x: 0.62699*width, y: 0.60129*height), control2: CGPoint(x: 0.62883*width, y: 0.88618*height))
        path.addCurve(to: CGPoint(x: 0.00495*width, y: 0.48828*height), control1: CGPoint(x: 0.32921*width, y: 1.07852*height), control2: CGPoint(x: 0.00495*width, y: 0.78535*height))
        path.closeSubpath()
        return path
    }
}
