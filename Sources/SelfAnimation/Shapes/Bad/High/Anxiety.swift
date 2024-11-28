//
//  Anger.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit

extension SelfShape {
    static func anxiety(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.96392*width, y: 0.99471*height))
        path.addCurve(to: CGPoint(x: 0.96392*width, y: 0.38333*height), control1: CGPoint(x: 1.01793*width, y: 0.97772*height), control2: CGPoint(x: 0.97495*width, y: 0.40865*height))
        path.addCurve(to: CGPoint(x: 0.57709*width, y: 0.00118*height), control1: CGPoint(x: 0.9529*width, y: 0.358*height), control2: CGPoint(x: 0.63992*width, y: -0.02382*height))
        path.addCurve(to: CGPoint(x: 0.47285*width, y: 0.31659*height), control1: CGPoint(x: 0.51427*width, y: 0.02617*height), control2: CGPoint(x: 0.49424*width, y: 0.27718*height))
        path.addCurve(to: CGPoint(x: 0.00292*width, y: 0.76182*height), control1: CGPoint(x: 0.45146*width, y: 0.35602*height), control2: CGPoint(x: -0.04227*width, y: 0.69985*height))
        path.addCurve(to: CGPoint(x: 0.62118*width, y: 0.43897*height), control1: CGPoint(x: 0.04811*width, y: 0.82379*height), control2: CGPoint(x: 0.6047*width, y: 0.4425*height))
        path.addCurve(to: CGPoint(x: 0.96393*width, y: 0.99472*height), control1: CGPoint(x: 0.63767*width, y: 0.43545*height), control2: CGPoint(x: 0.86475*width, y: 1.00371*height))
        path.addLine(to: CGPoint(x: 0.96392*width, y: 0.99471*height))
        path.closeSubpath()
        return path
    }
}
