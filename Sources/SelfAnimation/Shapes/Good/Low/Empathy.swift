//
//  Empathy.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Empathy: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.97559*width, y: 0.92404*height))
        path.addCurve(to: CGPoint(x: 0.64079*width, y: 0.90047*height), control1: CGPoint(x: 0.92722*width, y: 1.02444*height), control2: CGPoint(x: 0.74204*width, y: 0.96263*height))
        path.addCurve(to: CGPoint(x: 0.41446*width, y: 0.81084*height), control1: CGPoint(x: 0.54975*width, y: 0.84458*height), control2: CGPoint(x: 0.47333*width, y: 0.75565*height))
        path.addCurve(to: CGPoint(x: 0.36237*width, y: 0.90517*height), control1: CGPoint(x: 0.38107*width, y: 0.84215*height), control2: CGPoint(x: 0.38637*width, y: 0.89214*height))
        path.addCurve(to: CGPoint(x: 0.00952*width, y: 0.11289*height), control1: CGPoint(x: 0.23429*width, y: 0.97471*height), control2: CGPoint(x: -0.05609*width, y: 0.22416*height))
        path.addCurve(to: CGPoint(x: 0.2255*width, y: 0.11533*height), control1: CGPoint(x: 0.03734*width, y: 0.06569*height), control2: CGPoint(x: 0.10666*width, y: 0.17163*height))
        path.addCurve(to: CGPoint(x: 0.36181*width, y: 0), control1: CGPoint(x: 0.30872*width, y: 0.07591*height), control2: CGPoint(x: 0.30703*width, y: 0.00043*height))
        path.addCurve(to: CGPoint(x: 0.61645*width, y: 0.23091*height), control1: CGPoint(x: 0.45473*width, y: -0.0007*height), control2: CGPoint(x: 0.48604*width, y: 0.20944*height))
        path.addCurve(to: CGPoint(x: 0.67887*width, y: 0.22637*height), control1: CGPoint(x: 0.64838*width, y: 0.23617*height), control2: CGPoint(x: 0.65265*width, y: 0.22459*height))
        path.addCurve(to: CGPoint(x: 0.97559*width, y: 0.92404*height), control1: CGPoint(x: 0.71876*width, y: 0.22907*height), control2: CGPoint(x: 1.05611*width, y: 0.7569*height))
        path.closeSubpath()
        return path
    }
}