//
//  SelfShape.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 22/11/24.
//


import UIKit
import SwiftUI

enum SelfShape: Int, Identifiable, CaseIterable, Hashable {
    
    var id: Int {
        return self.rawValue
    }
    
    case surprise = 0
    
    var ogFrame: CGRect {
        switch self {
        case .surprise:
                .init(x: 0, y: 0, width: 975, height: 558)
        }
    }
    
    var ogGap: CGFloat {
        
        switch self {
        case .surprise:
            return 37.5
        }
        
    }
    
    var ogLineWidth: CGFloat {
        switch self {
        case .surprise:
            return 8.0
        }
    }
    
    var lineWidth: CGFloat {
        return ogLineWidth * 0.5
    }
    
    var lineDashSpacing: NSNumber {
        
        return NSNumber(floatLiteral: Double(ogGap * 0.5 + (ogLineWidth * 0.01)))
        
    }
    
    var lineDashAnimationOffset: NSNumber {
        
//        return NSNumber(floatLiteral: Double(CGFloat(truncating: lineDashSpacing) + (ogLineWidth * 0.15)))
        return NSNumber(floatLiteral: (ogGap+0.5) )
        
    }
    
    var frame: CGRect {
        
        
        return ogFrame.insetBy(dx: ogFrame.width/4, dy: ogFrame.height/4)

    }
    
    
    var transform: CATransform3D {
        
        var newTransform: CATransform3D

        
        switch self {
        case .surprise:
            newTransform = CATransform3DMakeRotation(
                Angle(degrees: 7).radians,
                0, 0, 1
            )
    
            newTransform = CATransform3DScale(
                newTransform,
                0.91, 0.91, 0
    
            )
    
            newTransform = CATransform3DTranslate(
                newTransform,
                0, 0, 0
            )
        }
        
        return newTransform
    }
            
    
    
    static func path(emotion: SelfShape, rect: CGRect) -> CGPath {
        
        switch emotion {
        case .surprise:
            let path = CGMutablePath()
            let width = rect.size.width
            let height = rect.size.height

            path.move(to: CGPoint(x: 0.20358*width, y: 0.71124*height))
            path.addCurve(to: CGPoint(x: 0.40717*width, y: 0.35562*height), control1: CGPoint(x: 0.31602*width, y: 0.71124*height), control2: CGPoint(x: 0.40717*width, y: 0.55202*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0), control1: CGPoint(x: 0.40717*width, y: 0.15922*height), control2: CGPoint(x: 0.31602*width, y: 0))
            path.addCurve(to: CGPoint(x: 0, y: 0.35562*height), control1: CGPoint(x: 0.09115*width, y: 0), control2: CGPoint(x: 0, y: 0.15922*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0.71124*height), control1: CGPoint(x: 0, y: 0.55202*height), control2: CGPoint(x: 0.09115*width, y: 0.71124*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.47313*width, y: height))
            path.addCurve(to: CGPoint(x: 0.67672*width, y: 0.64438*height), control1: CGPoint(x: 0.58557*width, y: height), control2: CGPoint(x: 0.67672*width, y: 0.84078*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: 0.28876*height), control1: CGPoint(x: 0.67672*width, y: 0.44798*height), control2: CGPoint(x: 0.58557*width, y: 0.28876*height))
            path.addCurve(to: CGPoint(x: 0.26955*width, y: 0.64438*height), control1: CGPoint(x: 0.36069*width, y: 0.28876*height), control2: CGPoint(x: 0.26955*width, y: 0.44798*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: height), control1: CGPoint(x: 0.26955*width, y: 0.84078*height), control2: CGPoint(x: 0.36069*width, y: height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.79642*width, y: 0.94737*height))
            path.addCurve(to: CGPoint(x: width, y: 0.59175*height), control1: CGPoint(x: 0.90885*width, y: 0.94737*height), control2: CGPoint(x: width, y: 0.78815*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.23613*height), control1: CGPoint(x: width, y: 0.39534*height), control2: CGPoint(x: 0.90885*width, y: 0.23613*height))
            path.addCurve(to: CGPoint(x: 0.59283*width, y: 0.59175*height), control1: CGPoint(x: 0.68398*width, y: 0.23613*height), control2: CGPoint(x: 0.59283*width, y: 0.39534*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.94737*height), control1: CGPoint(x: 0.59283*width, y: 0.78815*height), control2: CGPoint(x: 0.68398*width, y: 0.94737*height))
            path.closeSubpath()
            
            return path
        }
    }
    
}

#Preview {
    CALayerTesting()
}
