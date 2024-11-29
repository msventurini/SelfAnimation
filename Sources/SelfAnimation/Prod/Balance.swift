import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Balance: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.1217*width, y: 0.56269*height))
        path.addCurve(to: CGPoint(x: 0.00598*width, y: 0.69105*height), control1: CGPoint(x: 0.03939*width, y: 0.56269*height), control2: CGPoint(x: -0.01945*width, y: 0.62765*height))
        path.addCurve(to: CGPoint(x: 0.4938*width, y: 0.97785*height), control1: CGPoint(x: 0.07276*width, y: 0.8575*height), control2: CGPoint(x: 0.26592*width, y: 0.97785*height))
        path.addCurve(to: CGPoint(x: 0.9816*width, y: 0.69105*height), control1: CGPoint(x: 0.72167*width, y: 0.97785*height), control2: CGPoint(x: 0.91483*width, y: 0.8575*height))
        path.addCurve(to: CGPoint(x: 0.86589*width, y: 0.56269*height), control1: CGPoint(x: 1.00702*width, y: 0.62767*height), control2: CGPoint(x: 0.9482*width, y: 0.56269*height))
        path.addLine(to: CGPoint(x: 0.1217*width, y: 0.56269*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.33108*width, y: 0.26554*height))
        path.addCurve(to: CGPoint(x: 0.24113*width, y: 0.33446*height), control1: CGPoint(x: 0.28*width, y: 0.25791*height), control2: CGPoint(x: 0.23431*width, y: 0.29277*height))
        path.addCurve(to: CGPoint(x: 0.50332*width, y: 0.55763*height), control1: CGPoint(x: 0.25905*width, y: 0.44395*height), control2: CGPoint(x: 0.3619*width, y: 0.53652*height))
        path.addCurve(to: CGPoint(x: 0.84656*width, y: 0.42483*height), control1: CGPoint(x: 0.64473*width, y: 0.57874*height), control2: CGPoint(x: 0.7816*width, y: 0.52195*height))
        path.addCurve(to: CGPoint(x: 0.7929*width, y: 0.33446*height), control1: CGPoint(x: 0.8713*width, y: 0.38786*height), control2: CGPoint(x: 0.84397*width, y: 0.3421*height))
        path.addLine(to: CGPoint(x: 0.33108*width, y: 0.26552*height))
        path.addLine(to: CGPoint(x: 0.33108*width, y: 0.26554*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.52786*width, y: 0.00266*height))
        path.addCurve(to: CGPoint(x: 0.6143*width, y: 0.1955*height), control1: CGPoint(x: 0.58607*width, y: 0.0189*height), control2: CGPoint(x: 0.62477*width, y: 0.10524*height))
        path.addCurve(to: CGPoint(x: 0.48993*width, y: 0.32952*height), control1: CGPoint(x: 0.60382*width, y: 0.28576*height), control2: CGPoint(x: 0.54814*width, y: 0.34577*height))
        path.addCurve(to: CGPoint(x: 0.40349*width, y: 0.13667*height), control1: CGPoint(x: 0.43172*width, y: 0.31328*height), control2: CGPoint(x: 0.39302*width, y: 0.22694*height))
        path.addCurve(to: CGPoint(x: 0.52786*width, y: 0.00266*height), control1: CGPoint(x: 0.41397*width, y: 0.04641*height), control2: CGPoint(x: 0.46965*width, y: -0.01359*height))
        path.closeSubpath()
        return path
    }
}