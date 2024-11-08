//
//  FinalShape2.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//


import UIKit
import SwiftUI

struct SwiftUITestShape: Shape {
    
    func getDefaultPath(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47819*width, y: 0.00434*height))
        path.addCurve(to: CGPoint(x: 0.04209*width, y: 0.20135*height), control1: CGPoint(x: 0.21445*width, y: -0.00202*height), control2: CGPoint(x: 0.02504*width, y: 0.10413*height))
        path.addCurve(to: CGPoint(x: 0.35925*width, y: 0.35441*height), control1: CGPoint(x: 0.05558*width, y: 0.27835*height), control2: CGPoint(x: 0.19812*width, y: 0.34728*height))
        path.addCurve(to: CGPoint(x: 0.70337*width, y: 0.24857*height), control1: CGPoint(x: 0.50121*width, y: 0.36068*height), control2: CGPoint(x: 0.68472*width, y: 0.32018*height))
        path.addCurve(to: CGPoint(x: 0.52576*width, y: 0.11994*height), control1: CGPoint(x: 0.71771*width, y: 0.19351*height), control2: CGPoint(x: 0.63403*width, y: 0.12215*height))
        path.addCurve(to: CGPoint(x: 0.32753*width, y: 0.23555*height), control1: CGPoint(x: 0.4188*width, y: 0.11776*height), control2: CGPoint(x: 0.3216*width, y: 0.18379*height))
        path.addCurve(to: CGPoint(x: 0.66373*width, y: 0.39511*height), control1: CGPoint(x: 0.33362*width, y: 0.28868*height), control2: CGPoint(x: 0.44828*width, y: 0.32565*height))
        path.addCurve(to: CGPoint(x: 0.9349*width, y: 0.48955*height), control1: CGPoint(x: 0.84286*width, y: 0.45287*height), control2: CGPoint(x: 0.88844*width, y: 0.45227*height))
        path.addCurve(to: CGPoint(x: 0.89526*width, y: 0.71018*height), control1: CGPoint(x: 1.01725*width, y: 0.55562*height), control2: CGPoint(x: 1.01616*width, y: 0.67153*height))
        path.addCurve(to: CGPoint(x: 0.47184*width, y: 0.60515*height), control1: CGPoint(x: 0.74283*width, y: 0.75889*height), control2: CGPoint(x: 0.46666*width, y: 0.66349*height))
        path.addCurve(to: CGPoint(x: 0.6114*width, y: 0.5099*height), control1: CGPoint(x: 0.4754*width, y: 0.56523*height), control2: CGPoint(x: 0.60962*width, y: 0.55517*height))
        path.addCurve(to: CGPoint(x: 0.41951*width, y: 0.42849*height), control1: CGPoint(x: 0.61311*width, y: 0.46628*height), control2: CGPoint(x: 0.49086*width, y: 0.41416*height))
        path.addCurve(to: CGPoint(x: 0.37987*width, y: 0.55061*height), control1: CGPoint(x: 0.35289*width, y: 0.44188*height), control2: CGPoint(x: 0.32853*width, y: 0.51365*height))
        path.addCurve(to: CGPoint(x: 0.63677*width, y: 0.59457*height), control1: CGPoint(x: 0.43887*width, y: 0.59309*height), control2: CGPoint(x: 0.56442*width, y: 0.56547*height))
        path.addCurve(to: CGPoint(x: 0.51783*width, y: 0.9886*height), control1: CGPoint(x: 0.71831*width, y: 0.62737*height), control2: CGPoint(x: 0.72535*width, y: 0.72948*height))
        
        return path

    }
    
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.addPath(getDefaultPath(in: rect))
        
        
    

        return path
    }
}
