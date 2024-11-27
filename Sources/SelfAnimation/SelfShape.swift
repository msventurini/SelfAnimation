//
//  SelfShape 2.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import UIKit
import SwiftUI





    public enum SelfShape2: Int, Identifiable, CaseIterable, Hashable {
        
        public var id: Int {
            return self.rawValue
        }
        
        case tension = 0
        
        
        static func path(emotion: SelfShape2, rect: CGRect) -> CGPath {
            switch emotion {
            case .tension:
                return Tension.cgPath(in: rect)
            }
            
        }
        
        
        var ogFrame: CGRect {
            
            return        .init(x: 0, y: 0, width: 975, height: 558)
            
            
        }
        
        var ogGap: CGFloat {
            
                return 37.5
            
            
        }
        
        var ogLineWidth: CGFloat {
            
                return 8.0
            
        }
        
        var lineWidth: CGFloat {
            return ogLineWidth * 0.5
        }
        
        var lineDashSpacing: NSNumber {
            return NSNumber(floatLiteral: Double(ogGap * 0.5 + (ogLineWidth * 0.01)))
        }
        
        var lineDashAnimationOffset: NSNumber {
            return NSNumber(floatLiteral: (ogGap+0.5) )
        }
        
        var frame: CGRect {
            return ogFrame.insetBy(dx: ogFrame.width/4, dy: ogFrame.height/4)
        }

            
            
            
    }

    
    
    
    public enum SelfShape: Int, Identifiable, CaseIterable, Hashable {
    
    public var id: Int {
        return self.rawValue
    }
    
    case surprise = 0
    case euphoria = 1
    
    
    
    var ogFrame: CGRect {
        switch self {
        case .surprise:
                .init(x: 0, y: 0, width: 975, height: 558)
        case .euphoria:
                .init(x: 0, y: 0, width: 608, height: 608)
        }
    }
    
    var ogGap: CGFloat {
        switch self {
        case .surprise:
            return 37.5
        case .euphoria:
            return 37.5
        }
    }
    
    var ogLineWidth: CGFloat {
        switch self {
        case .surprise:
            return 8.0
        case .euphoria:
            return 7.5
        }
    }
    
    var lineWidth: CGFloat {
        return ogLineWidth * 0.5
    }
    
    var lineDashSpacing: NSNumber {
        return NSNumber(floatLiteral: Double(ogGap * 0.5 + (ogLineWidth * 0.01)))
    }
    
    var lineDashAnimationOffset: NSNumber {
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
            
        case .euphoria:
            newTransform = CATransform3DMakeRotation(
                Angle(degrees: -191).radians,
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
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        switch emotion {
            
            
        case .surprise:
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
            
            
            
        case .euphoria:
            path.move(to: CGPoint(x: 0.52928*width, y: 0.20446*height))
            path.addLine(to: CGPoint(x: 0.65981*width, y: 0.01936*height))
            path.addCurve(to: CGPoint(x: 0.72525*width, y: 0.04651*height), control1: CGPoint(x: 0.68213*width, y: -0.01231*height), control2: CGPoint(x: 0.73182*width, y: 0.00831*height))
            path.addLine(to: CGPoint(x: 0.68685*width, y: 0.26984*height))
            path.addCurve(to: CGPoint(x: 0.7288*width, y: 0.31185*height), control1: CGPoint(x: 0.68258*width, y: 0.29459*height), control2: CGPoint(x: 0.70408*width, y: 0.31612*height))
            path.addLine(to: CGPoint(x: 0.9518*width, y: 0.27338*height))
            path.addCurve(to: CGPoint(x: 0.97891*width, y: 0.33893*height), control1: CGPoint(x: 0.98994*width, y: 0.2668*height), control2: CGPoint(x: 1.01053*width, y: 0.31657*height))
            path.addLine(to: CGPoint(x: 0.79407*width, y: 0.46965*height))
            path.addCurve(to: CGPoint(x: 0.79407*width, y: 0.52906*height), control1: CGPoint(x: 0.77358*width, y: 0.48414*height), control2: CGPoint(x: 0.77358*width, y: 0.51457*height))
            path.addLine(to: CGPoint(x: 0.97891*width, y: 0.65978*height))
            path.addCurve(to: CGPoint(x: 0.9518*width, y: 0.72532*height), control1: CGPoint(x: 1.01053*width, y: 0.68213*height), control2: CGPoint(x: 0.98994*width, y: 0.7319*height))
            path.addLine(to: CGPoint(x: 0.7288*width, y: 0.68686*height))
            path.addCurve(to: CGPoint(x: 0.68685*width, y: 0.72886*height), control1: CGPoint(x: 0.70408*width, y: 0.68259*height), control2: CGPoint(x: 0.68258*width, y: 0.70411*height))
            path.addLine(to: CGPoint(x: 0.72525*width, y: 0.95219*height))
            path.addCurve(to: CGPoint(x: 0.65981*width, y: 0.97934*height), control1: CGPoint(x: 0.73182*width, y: 0.99038*height), control2: CGPoint(x: 0.68213*width, y: 1.011*height))
            path.addLine(to: CGPoint(x: 0.52928*width, y: 0.79423*height))
            path.addCurve(to: CGPoint(x: 0.46995*width, y: 0.79423*height), control1: CGPoint(x: 0.51481*width, y: 0.77372*height), control2: CGPoint(x: 0.48442*width, y: 0.77372*height))
            path.addLine(to: CGPoint(x: 0.33942*width, y: 0.97934*height))
            path.addCurve(to: CGPoint(x: 0.27397*width, y: 0.95219*height), control1: CGPoint(x: 0.3171*width, y: 1.011*height), control2: CGPoint(x: 0.2674*width, y: 0.99038*height))
            path.addLine(to: CGPoint(x: 0.31238*width, y: 0.72886*height))
            path.addCurve(to: CGPoint(x: 0.27044*width, y: 0.68686*height), control1: CGPoint(x: 0.31665*width, y: 0.70411*height), control2: CGPoint(x: 0.29515*width, y: 0.68259*height))
            path.addLine(to: CGPoint(x: 0.04743*width, y: 0.72532*height))
            path.addCurve(to: CGPoint(x: 0.02032*width, y: 0.65978*height), control1: CGPoint(x: 0.00929*width, y: 0.7319*height), control2: CGPoint(x: -0.0113*width, y: 0.68213*height))
            path.addLine(to: CGPoint(x: 0.20515*width, y: 0.52906*height))
            path.addCurve(to: CGPoint(x: 0.20515*width, y: 0.46965*height), control1: CGPoint(x: 0.22565*width, y: 0.51457*height), control2: CGPoint(x: 0.22565*width, y: 0.48414*height))
            path.addLine(to: CGPoint(x: 0.02032*width, y: 0.33893*height))
            path.addCurve(to: CGPoint(x: 0.04743*width, y: 0.27338*height), control1: CGPoint(x: -0.0113*width, y: 0.31657*height), control2: CGPoint(x: 0.00929*width, y: 0.2668*height))
            path.addLine(to: CGPoint(x: 0.27044*width, y: 0.31185*height))
            path.addCurve(to: CGPoint(x: 0.31238*width, y: 0.26984*height), control1: CGPoint(x: 0.29515*width, y: 0.31612*height), control2: CGPoint(x: 0.31665*width, y: 0.29459*height))
            path.addLine(to: CGPoint(x: 0.27397*width, y: 0.04651*height))
            path.addCurve(to: CGPoint(x: 0.33942*width, y: 0.01936*height), control1: CGPoint(x: 0.2674*width, y: 0.00831*height), control2: CGPoint(x: 0.3171*width, y: -0.01231*height))
            path.addLine(to: CGPoint(x: 0.46995*width, y: 0.20446*height))
            path.addCurve(to: CGPoint(x: 0.52928*width, y: 0.20446*height), control1: CGPoint(x: 0.48442*width, y: 0.22499*height), control2: CGPoint(x: 0.51481*width, y: 0.22499*height))
            path.closeSubpath()
        }
        
        return path
    }
    
}
