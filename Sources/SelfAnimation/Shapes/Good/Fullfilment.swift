//
//  Fullfilment.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import UIKit
extension SelfShape {
    
    static func fullfilmentShape(rect: CGRect) -> CGPath {
        var path = CGMutablePath()
        
                let width = rect.size.width
                let height = rect.size.height
                path.move(to: CGPoint(x: 1.03903*width, y: 0.52785*height))
                path.addCurve(to: CGPoint(x: 0.54377*width, y: 1.02302*height), control1: CGPoint(x: 1.03903*width, y: 0.80133*height), control2: CGPoint(x: 0.81729*width, y: 1.02302*height))
                path.addCurve(to: CGPoint(x: 0.04853*width, y: 0.52785*height), control1: CGPoint(x: 0.27026*width, y: 1.02302*height), control2: CGPoint(x: 0.04853*width, y: 0.80133*height))
                path.addCurve(to: CGPoint(x: 0.54377*width, y: 0.03268*height), control1: CGPoint(x: 0.04853*width, y: 0.25437*height), control2: CGPoint(x: 0.27026*width, y: 0.03268*height))
                path.addCurve(to: CGPoint(x: 1.03903*width, y: 0.52785*height), control1: CGPoint(x: 0.81729*width, y: 0.03268*height), control2: CGPoint(x: 1.03903*width, y: 0.25437*height))
                path.closeSubpath()
        return path
    }
    
}
