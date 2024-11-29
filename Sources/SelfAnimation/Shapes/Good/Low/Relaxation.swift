//
//  Relaxation.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Relaxation: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.99954*width, y: 0.62364*height))
        path.addCurve(to: CGPoint(x: 0.68151*width, y: 0.77038*height), control1: CGPoint(x: 0.99015*width, y: 0.70711*height), control2: CGPoint(x: 0.84333*width, y: 0.57739*height))
        path.addCurve(to: CGPoint(x: 0.49999*width, y: 0.99992*height), control1: CGPoint(x: 0.59104*width, y: 0.87827*height), control2: CGPoint(x: 0.57195*width, y: 0.99634*height))
        path.addCurve(to: CGPoint(x: 0.32137*width, y: 0.79973*height), control1: CGPoint(x: 0.43305*width, y: 1.00325*height), control2: CGPoint(x: 0.41168*width, y: 0.90299*height))
        path.addCurve(to: CGPoint(x: 0.00044*width, y: 0.62364*height), control1: CGPoint(x: 0.15092*width, y: 0.60484*height), control2: CGPoint(x: 0.00945*width, y: 0.7133*height))
        path.addCurve(to: CGPoint(x: 0.25118*width, y: 0.32911*height), control1: CGPoint(x: -0.00831*width, y: 0.53658*height), control2: CGPoint(x: 0.11624*width, y: 0.34552*height))
        path.addCurve(to: CGPoint(x: 0.49321*width, y: 0.40668*height), control1: CGPoint(x: 0.35011*width, y: 0.31708*height), control2: CGPoint(x: 0.37142*width, y: 0.41068*height))
        path.addCurve(to: CGPoint(x: 0.71588*width, y: 0.32073*height), control1: CGPoint(x: 0.60652*width, y: 0.40294*height), control2: CGPoint(x: 0.62237*width, y: 0.32079*height))
        path.addCurve(to: CGPoint(x: 0.99954*width, y: 0.62364*height), control1: CGPoint(x: 0.86884*width, y: 0.32062*height), control2: CGPoint(x: 1.00903*width, y: 0.53935*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5968*width, y: 0.20963*height))
        path.addCurve(to: CGPoint(x: 0.49999*width, y: 0.41925*height), control1: CGPoint(x: 0.5968*width, y: 0.3254*height), control2: CGPoint(x: 0.55346*width, y: 0.41925*height))
        path.addCurve(to: CGPoint(x: 0.40318*width, y: 0.20963*height), control1: CGPoint(x: 0.44652*width, y: 0.41925*height), control2: CGPoint(x: 0.40318*width, y: 0.3254*height))
        path.addCurve(to: CGPoint(x: 0.49999*width, y: 0), control1: CGPoint(x: 0.40318*width, y: 0.09385*height), control2: CGPoint(x: 0.44652*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.5968*width, y: 0.20963*height), control1: CGPoint(x: 0.55346*width, y: 0), control2: CGPoint(x: 0.5968*width, y: 0.09385*height))
        path.closeSubpath()
        return path
    }
}