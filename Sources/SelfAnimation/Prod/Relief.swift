import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Relief: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: width, y: 0.86387*height))
        path.addCurve(to: CGPoint(x: 0.88724*width, y: height), control1: CGPoint(x: width, y: 0.93905*height), control2: CGPoint(x: 0.94952*width, y: height))
        path.addCurve(to: CGPoint(x: 0.77448*width, y: 0.86387*height), control1: CGPoint(x: 0.82496*width, y: height), control2: CGPoint(x: 0.77448*width, y: 0.93905*height))
        path.addCurve(to: CGPoint(x: 0.88724*width, y: 0.72774*height), control1: CGPoint(x: 0.77448*width, y: 0.78869*height), control2: CGPoint(x: 0.82496*width, y: 0.72774*height))
        path.addCurve(to: CGPoint(x: width, y: 0.86387*height), control1: CGPoint(x: 0.94952*width, y: 0.72774*height), control2: CGPoint(x: width, y: 0.78869*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.90863*width, y: 0.70016*height))
        path.addCurve(to: CGPoint(x: 0.68311*width, y: 0.97243*height), control1: CGPoint(x: 0.90863*width, y: 0.85053*height), control2: CGPoint(x: 0.80767*width, y: 0.97243*height))
        path.addCurve(to: CGPoint(x: 0.45759*width, y: 0.70016*height), control1: CGPoint(x: 0.55856*width, y: 0.97243*height), control2: CGPoint(x: 0.45759*width, y: 0.85053*height))
        path.addCurve(to: CGPoint(x: 0.68311*width, y: 0.4279*height), control1: CGPoint(x: 0.45759*width, y: 0.5498*height), control2: CGPoint(x: 0.55856*width, y: 0.4279*height))
        path.addCurve(to: CGPoint(x: 0.90863*width, y: 0.70016*height), control1: CGPoint(x: 0.80767*width, y: 0.4279*height), control2: CGPoint(x: 0.90863*width, y: 0.5498*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.67656*width, y: 0.40839*height))
        path.addCurve(to: CGPoint(x: 0.33828*width, y: 0.81678*height), control1: CGPoint(x: 0.67656*width, y: 0.63394*height), control2: CGPoint(x: 0.5251*width, y: 0.81678*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.40839*height), control1: CGPoint(x: 0.15145*width, y: 0.81678*height), control2: CGPoint(x: 0, y: 0.63394*height))
        path.addCurve(to: CGPoint(x: 0.33828*width, y: 0), control1: CGPoint(x: 0, y: 0.18285*height), control2: CGPoint(x: 0.15145*width, y: 0))
        path.addCurve(to: CGPoint(x: 0.67656*width, y: 0.40839*height), control1: CGPoint(x: 0.5251*width, y: 0), control2: CGPoint(x: 0.67656*width, y: 0.18285*height))
        path.closeSubpath()
        return path
    }
}