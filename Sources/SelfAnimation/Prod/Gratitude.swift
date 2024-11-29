import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Gratitude: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.50437*width, y: 0.97585*height))
        path.addCurve(to: CGPoint(x: 0.86359*width, y: 0.78327*height), control1: CGPoint(x: 0.62534*width, y: 0.97282*height), control2: CGPoint(x: 0.78342*width, y: 0.87169*height))
        path.addCurve(to: CGPoint(x: 0.97189*width, y: 0.56758*height), control1: CGPoint(x: 0.94104*width, y: 0.69786*height), control2: CGPoint(x: 0.96463*width, y: 0.60356*height))
        path.addCurve(to: CGPoint(x: 0.94811*width, y: 0.30954*height), control1: CGPoint(x: 0.99642*width, y: 0.44586*height), control2: CGPoint(x: 0.96357*width, y: 0.34823*height))
        path.addCurve(to: CGPoint(x: 0.81077*width, y: 0.12211*height), control1: CGPoint(x: 0.93848*width, y: 0.28545*height), control2: CGPoint(x: 0.90143*width, y: 0.19863*height))
        path.addCurve(to: CGPoint(x: 0.47796*width, y: 0.00014*height), control1: CGPoint(x: 0.77815*width, y: 0.09457*height), control2: CGPoint(x: 0.65737*width, y: -0.0042*height))
        path.addCurve(to: CGPoint(x: 0.20062*width, y: 0.09643*height), control1: CGPoint(x: 0.33166*width, y: 0.00368*height), control2: CGPoint(x: 0.23199*width, y: 0.07373*height))
        path.addCurve(to: CGPoint(x: 0.00253*width, y: 0.41738*height), control1: CGPoint(x: 0.17037*width, y: 0.11832*height), control2: CGPoint(x: 0.02219*width, y: 0.22556*height))
        path.addCurve(to: CGPoint(x: 0.07252*width, y: 0.69468*height), control1: CGPoint(x: -0.00113*width, y: 0.45304*height), control2: CGPoint(x: -0.01203*width, y: 0.57857*height))
        path.addCurve(to: CGPoint(x: 0.50173*width, y: 0.85388*height), control1: CGPoint(x: 0.16597*width, y: 0.82302*height), control2: CGPoint(x: 0.34074*width, y: 0.8914*height))
        path.addCurve(to: CGPoint(x: 0.76454*width, y: 0.64334*height), control1: CGPoint(x: 0.52114*width, y: 0.84936*height), control2: CGPoint(x: 0.70407*width, y: 0.80373*height))
        path.addCurve(to: CGPoint(x: 0.76718*width, y: 0.44563*height), control1: CGPoint(x: 0.77298*width, y: 0.62094*height), control2: CGPoint(x: 0.80234*width, y: 0.53928*height))
        path.addCurve(to: CGPoint(x: 0.61267*width, y: 0.28644*height), control1: CGPoint(x: 0.76017*width, y: 0.42695*height), control2: CGPoint(x: 0.72104*width, y: 0.32909*height))
        path.addCurve(to: CGPoint(x: 0.35514*width, y: 0.31724*height), control1: CGPoint(x: 0.53801*width, y: 0.25705*height), control2: CGPoint(x: 0.42639*width, y: 0.25224*height))
        path.addCurve(to: CGPoint(x: 0.29175*width, y: 0.43921*height), control1: CGPoint(x: 0.30741*width, y: 0.3608*height), control2: CGPoint(x: 0.29572*width, y: 0.41932*height))
        path.addCurve(to: CGPoint(x: 0.29967*width, y: 0.56117*height), control1: CGPoint(x: 0.28648*width, y: 0.46561*height), control2: CGPoint(x: 0.2771*width, y: 0.51254*height))
        path.addCurve(to: CGPoint(x: 0.47532*width, y: 0.66389*height), control1: CGPoint(x: 0.32485*width, y: 0.6154*height), control2: CGPoint(x: 0.39311*width, y: 0.67902*height))
        path.addCurve(to: CGPoint(x: 0.59814*width, y: 0.54192*height), control1: CGPoint(x: 0.53446*width, y: 0.65301*height), control2: CGPoint(x: 0.58271*width, y: 0.6047*height))
        return path
    }
}