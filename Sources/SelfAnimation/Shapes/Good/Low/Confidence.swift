//
//  Confidence.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Confidence: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.87701*width, y: 0.37206*height))
        path.addCurve(to: CGPoint(x: 0.62382*width, y: 0.29799*height), control1: CGPoint(x: 0.76069*width, y: 0.38066*height), control2: CGPoint(x: 0.67757*width, y: 0.33773*height))
        path.addCurve(to: CGPoint(x: 0.33874*width, y: 0.02807*height), control1: CGPoint(x: 0.50464*width, y: 0.20987*height), control2: CGPoint(x: 0.46246*width, y: 0.08758*height))
        path.addCurve(to: CGPoint(x: 0.15428*width, y: 0.00729*height), control1: CGPoint(x: 0.26335*width, y: -0.00821*height), control2: CGPoint(x: 0.19687*width, y: -0.00231*height))
        path.addCurve(to: CGPoint(x: 0.09493*width, y: 0.02732*height), control1: CGPoint(x: 0.15098*width, y: 0.00564*height), control2: CGPoint(x: 0.12128*width, y: -0.00836*height))
        path.addCurve(to: CGPoint(x: 0.06803*width, y: 0.12408*height), control1: CGPoint(x: 0.07878*width, y: 0.04919*height), control2: CGPoint(x: 0.06803*width, y: 0.08385*height))
        path.addCurve(to: CGPoint(x: 0.12337*width, y: 0.30914*height), control1: CGPoint(x: 0.09799*width, y: 0.173*height), control2: CGPoint(x: 0.13075*width, y: 0.24188*height))
        path.addCurve(to: CGPoint(x: 0.00788*width, y: 0.51018*height), control1: CGPoint(x: 0.11307*width, y: 0.40294*height), control2: CGPoint(x: 0.03384*width, y: 0.40981*height))
        path.addCurve(to: CGPoint(x: 0.06803*width, y: 0.85361*height), control1: CGPoint(x: -0.00768*width, y: 0.57037*height), control2: CGPoint(x: -0.0061*width, y: 0.67191*height))
        path.addCurve(to: CGPoint(x: 0.09493*width, y: 0.95037*height), control1: CGPoint(x: 0.06803*width, y: 0.85974*height), control2: CGPoint(x: 0.06857*width, y: 0.91469*height))
        path.addCurve(to: CGPoint(x: 0.15428*width, y: 0.9704*height), control1: CGPoint(x: 0.11107*width, y: 0.97224*height), control2: CGPoint(x: 0.13264*width, y: 0.98132*height))
        path.addCurve(to: CGPoint(x: 0.34083*width, y: 0.70562*height), control1: CGPoint(x: 0.21683*width, y: 0.81727*height), control2: CGPoint(x: 0.28955*width, y: 0.67632*height))
        path.addCurve(to: CGPoint(x: 0.40117*width, y: 0.84523*height), control1: CGPoint(x: 0.37351*width, y: 0.72431*height), control2: CGPoint(x: 0.37499*width, y: 0.79933*height))
        path.addCurve(to: CGPoint(x: 0.87701*width, y: 0.60564*height), control1: CGPoint(x: 0.44876*width, y: 0.92869*height), control2: CGPoint(x: 0.57492*width, y: 0.91061*height))
        path.addCurve(to: CGPoint(x: 0.89888*width, y: 0.58174*height), control1: CGPoint(x: 0.88286*width, y: 0.60006*height), control2: CGPoint(x: 0.89044*width, y: 0.59222*height))
        path.addCurve(to: CGPoint(x: 0.98588*width, y: 0.33704*height), control1: CGPoint(x: 0.95874*width, y: 0.50744*height), control2: CGPoint(x: 1.00206*width, y: 0.37455*height))
        path.addCurve(to: CGPoint(x: 0.87701*width, y: 0.37202*height), control1: CGPoint(x: 0.97837*width, y: 0.31964*height), control2: CGPoint(x: 0.95406*width, y: 0.31349*height))
        path.addLine(to: CGPoint(x: 0.87701*width, y: 0.37206*height))
        path.closeSubpath()
        return path
    }
}