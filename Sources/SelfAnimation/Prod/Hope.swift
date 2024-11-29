import UIKit
import SwiftUI
import UIKit
import SwiftUI

struct Hope: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.7409*width, y: 0.68754*height))
        path.addCurve(to: CGPoint(x: 0.64977*width, y: 0.80604*height), control1: CGPoint(x: 0.73197*width, y: 0.73234*height), control2: CGPoint(x: 0.70558*width, y: 0.72655*height))
        path.addCurve(to: CGPoint(x: 0.54279*width, y: 0.99613*height), control1: CGPoint(x: 0.57645*width, y: 0.91047*height), control2: CGPoint(x: 0.58104*width, y: 0.97881*height))
        path.addCurve(to: CGPoint(x: 0.34467*width, y: 0.68753*height), control1: CGPoint(x: 0.47819*width, y: 1.0254*height), control2: CGPoint(x: 0.34467*width, y: 0.88523*height))
        path.addCurve(to: CGPoint(x: 0.54279*width, y: 0.37892*height), control1: CGPoint(x: 0.34467*width, y: 0.5171*height), control2: CGPoint(x: 0.43337*width, y: 0.37892*height))
        path.addCurve(to: CGPoint(x: 0.74091*width, y: 0.68753*height), control1: CGPoint(x: 0.66882*width, y: 0.37892*height), control2: CGPoint(x: 0.76056*width, y: 0.58884*height))
        path.addLine(to: CGPoint(x: 0.7409*width, y: 0.68754*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.54278*width, y: 0.31723*height))
        path.addCurve(to: CGPoint(x: 0.48892*width, y: 0.04033*height), control1: CGPoint(x: 0.47687*width, y: 0.21528*height), control2: CGPoint(x: 0.46062*width, y: 0.09683*height))
        path.addCurve(to: CGPoint(x: 0.54278*width, y: 0), control1: CGPoint(x: 0.49406*width, y: 0.03007*height), control2: CGPoint(x: 0.50822*width, y: 0.00678*height))
        path.move(to: CGPoint(x: 0.72741*width, y: 0.49005*height))
        path.addCurve(to: CGPoint(x: 0.89362*width, y: 0.30172*height), control1: CGPoint(x: 0.83957*width, y: 0.4336*height), control2: CGPoint(x: 0.87916*width, y: 0.36075*height))
        path.addCurve(to: CGPoint(x: 0.93529*width, y: 0.20092*height), control1: CGPoint(x: 0.90078*width, y: 0.27249*height), control2: CGPoint(x: 0.90805*width, y: 0.22096*height))
        path.addCurve(to: CGPoint(x: width, y: 0.20776*height), control1: CGPoint(x: 0.95696*width, y: 0.18499*height), control2: CGPoint(x: 0.98197*width, y: 0.19582*height))
        path.move(to: CGPoint(x: 0.34466*width, y: 0.51474*height))
        path.addCurve(to: CGPoint(x: 0.01403*width, y: 0.2573*height), control1: CGPoint(x: 0.31705*width, y: 0.50418*height), control2: CGPoint(x: 0.06041*width, y: 0.40337*height))
        path.addCurve(to: CGPoint(x: 0.00416*width, y: 0.14796*height), control1: CGPoint(x: 0.00691*width, y: 0.23487*height), control2: CGPoint(x: -0.00694*width, y: 0.19125*height))
        path.addCurve(to: CGPoint(x: 0.05899*width, y: 0.07963*height), control1: CGPoint(x: 0.01615*width, y: 0.10117*height), control2: CGPoint(x: 0.04985*width, y: 0.08385*height))
        return path
    }
}