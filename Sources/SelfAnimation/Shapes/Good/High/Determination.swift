//
//  Determination.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import UIKit

extension SelfShape {
    
    static func determinationShape(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.3303*width, y: 0.05122*height))
        path.addLine(to: CGPoint(x: 0.03217*width, y: 0.45762*height))
        path.addCurve(to: CGPoint(x: 0.1002*width, y: 0.71023*height), control1: CGPoint(x: -0.03244*width, y: 0.54569*height), control2: CGPoint(x: 0.00536*width, y: 0.68604*height))
        path.addLine(to: CGPoint(x: 0.53787*width, y: 0.82189*height))
        path.addCurve(to: CGPoint(x: 0.68324*width, y: 0.62372*height), control1: CGPoint(x: 0.63272*width, y: 0.84609*height), control2: CGPoint(x: 0.71348*width, y: 0.736*height))
        path.addLine(to: CGPoint(x: 0.54369*width, y: 0.10566*height))
        path.addCurve(to: CGPoint(x: 0.3303*width, y: 0.05122*height), control1: CGPoint(x: 0.51347*width, y: -0.0066*height), control2: CGPoint(x: 0.3949*width, y: -0.03685*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45307*width, y: 0.28021*height))
        path.addLine(to: CGPoint(x: 0.31723*width, y: 0.79973*height))
        path.addCurve(to: CGPoint(x: 0.46401*width, y: 0.99634*height), control1: CGPoint(x: 0.2878*width, y: 0.91232*height), control2: CGPoint(x: 0.36934*width, y: 1.02154*height))
        path.addLine(to: CGPoint(x: 0.90087*width, y: 0.88004*height))
        path.addCurve(to: CGPoint(x: 0.9671*width, y: 0.62672*height), control1: CGPoint(x: 0.99554*width, y: 0.85484*height), control2: CGPoint(x: 1.03234*width, y: 0.71411*height))
        path.addLine(to: CGPoint(x: 0.66609*width, y: 0.22351*height))
        path.addCurve(to: CGPoint(x: 0.45307*width, y: 0.28022*height), control1: CGPoint(x: 0.60085*width, y: 0.13612*height), control2: CGPoint(x: 0.48251*width, y: 0.16763*height))
        path.addLine(to: CGPoint(x: 0.45307*width, y: 0.28021*height))
        path.closeSubpath()
        return path
    }
    
}
