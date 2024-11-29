//
//  Affection.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Affection: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.59394*width, y: 0.62411*height))
        path.addCurve(to: CGPoint(x: 0.78694*width, y: 0.83901*height), control1: CGPoint(x: 0.68264*width, y: 0.63609*height), control2: CGPoint(x: 0.69974*width, y: 0.80813*height))
        path.addCurve(to: CGPoint(x: 0.92633*width, y: 0.76209*height), control1: CGPoint(x: 0.83733*width, y: 0.85688*height), control2: CGPoint(x: 0.89625*width, y: 0.8223*height))
        path.addCurve(to: CGPoint(x: 0.90041*width, y: 0.36151*height), control1: CGPoint(x: 0.99261*width, y: 0.62942*height), control2: CGPoint(x: 0.9103*width, y: 0.38953*height))
        path.addCurve(to: CGPoint(x: 0.57298*width, y: 0.03677*height), control1: CGPoint(x: 0.83548*width, y: 0.1774*height), control2: CGPoint(x: 0.70424*width, y: 0.05059*height))
        path.addCurve(to: CGPoint(x: 0.06161*width, y: 0.76372*height), control1: CGPoint(x: 0.28891*width, y: 0.00685*height), control2: CGPoint(x: 0.01616*width, y: 0.50729*height))
        path.addCurve(to: CGPoint(x: 0.26981*width, y: 0.9716*height), control1: CGPoint(x: 0.08413*width, y: 0.89079*height), control2: CGPoint(x: 0.19204*width, y: 0.99901*height))
        path.addCurve(to: CGPoint(x: 0.52985*width, y: 0.6439*height), control1: CGPoint(x: 0.36204*width, y: 0.9391*height), control2: CGPoint(x: 0.38219*width, y: 0.72628*height))
        path.addCurve(to: CGPoint(x: 0.59394*width, y: 0.62411*height), control1: CGPoint(x: 0.55506*width, y: 0.62984*height), control2: CGPoint(x: 0.57137*width, y: 0.62106*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.3919*width, y: 0.32046*height))
        path.addCurve(to: CGPoint(x: 0.19618*width, y: 0.04957*height), control1: CGPoint(x: 0.29581*width, y: 0.29082*height), control2: CGPoint(x: 0.28928*width, y: 0.09961*height))
        path.addCurve(to: CGPoint(x: 0.0384*width, y: 0.10762*height), control1: CGPoint(x: 0.14236*width, y: 0.02064*height), control2: CGPoint(x: 0.07553*width, y: 0.04744*height))
        path.addCurve(to: CGPoint(x: 0.0384*width, y: 0.55024*height), control1: CGPoint(x: -0.04341*width, y: 0.24023*height), control2: CGPoint(x: 0.02958*width, y: 0.51779*height))
        path.addCurve(to: CGPoint(x: 0.3733*width, y: 0.96626*height), control1: CGPoint(x: 0.09636*width, y: 0.76358*height), control2: CGPoint(x: 0.23083*width, y: 0.92665*height))
        path.addCurve(to: CGPoint(x: 0.98356*width, y: 0.26723*height), control1: CGPoint(x: 0.68164*width, y: 1.05198*height), control2: CGPoint(x: 1.0151*width, y: 0.55597*height))
        path.addCurve(to: CGPoint(x: 0.77071*width, y: 0.00118*height), control1: CGPoint(x: 0.96792*width, y: 0.12418*height), control2: CGPoint(x: 0.85763*width, y: -0.01424*height))
        path.addCurve(to: CGPoint(x: 0.46335*width, y: 0.31079*height), control1: CGPoint(x: 0.66761*width, y: 0.01947*height), control2: CGPoint(x: 0.63054*width, y: 0.24832*height))
        path.addCurve(to: CGPoint(x: 0.3919*width, y: 0.32046*height), control1: CGPoint(x: 0.4348*width, y: 0.32146*height), control2: CGPoint(x: 0.41635*width, y: 0.328*height))
        path.closeSubpath()
        return path
    }
}