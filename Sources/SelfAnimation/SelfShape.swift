//
//  SelfShape 2.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import UIKit
import SwiftUI
import UIKit
import SwiftUI

public enum SelfShape: String, Identifiable, CaseIterable, Hashable {
    
        public var id: String {
        return self.rawValue
    }
    
    case surprise = "surprise"
    case euphoria = "euphoria"
    case bravery = "bravery"
    case curiosity = "curiosity"
    case determination = "determination"
    case fullfillment = "fullfillment"
    
    
    
    var ogFrame: CGRect {
        switch self {
        case .surprise:
                .init(x: 0, y: 0, width: 975, height: 558)
        case .euphoria:
                .init(x: 0, y: 0, width: 608, height: 608)
        case .bravery:
                .init(x: 0, y: 0, width: 636, height: 904)
        case .curiosity:
                .init(x: 0, y: 0, width: 752, height: 478)
        case .determination:
                .init(x: 0, y: 0, width: 814, height: 668)
        case .fullfillment:
                .init(x: 0, y: 0, width: 684, height: 696)
        }
    }
    
        static let ogGap: CGFloat =  37.5
        
    
    
    
        static func ogLineWidth(for weight: ShapeWeight) -> CGFloat {
            switch weight {
            case .light:
                return 7.5
            case .dark:
                return 11.5
            }
        }
        

        static func lineWidth(for weight: ShapeWeight) -> CGFloat {
            return ogLineWidth(for: weight) * 0.5
        }

    
    
        static func lineDashSpacing(for weight: ShapeWeight) -> NSNumber {
            return NSNumber(floatLiteral: Double(ogGap * 0.5 + SelfShape.lineWidth(for: weight)  * 0.01))
    }
    
    var lineDashAnimationOffset: NSNumber {
        return NSNumber(floatLiteral: (SelfShape.ogGap+0.5) )
    }
    
    var frame: CGRect {
        return ogFrame.insetBy(dx: ogFrame.width/4, dy: ogFrame.height/4)
    }
    
    var transform: CATransform3D {
        var newTransform: CATransform3D
        switch self {
            
            
        case .bravery:
            newTransform = CATransform3DMakeRotation(
                Angle(degrees: 5).radians,
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
            
        case .surprise, .determination:
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
                125, 125, 0
            )
            
            
            
        case .curiosity:
            newTransform = CATransform3DMakeRotation(
                Angle(degrees: 11).radians,
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
            
        case .fullfillment:
            
            newTransform = CATransform3DMakeTranslation(
                40.72, 42.40, 0
            )
            
            newTransform = CATransform3DScale(
                newTransform,
                0.91, 0.91, 0
    
            )
            
            newTransform = CATransform3DRotate(newTransform,
                Angle(degrees: 132).radians,
                0, 0, 1
            )
        }

        return newTransform
    }
            
    
    
    static func path(emotion: SelfShape, rect: CGRect) -> CGPath {
        
        switch emotion {
            
        case .curiosity:
            return SelfShape.curiosityShape(rect: rect)
            
        case .surprise:

            
            return SelfShape.surpriseShape(rect: rect)
            
            
        case .euphoria:
            
            return SelfShape.euphoriaShape(rect: rect)
    
        case .bravery:
            return SelfShape.braveryShape(rect: rect)
            
        case .determination:
            return SelfShape.determinationShape(rect: rect)
        case .fullfillment:
            return fullfilmentShape(rect: rect)
        }
        
        
    }
    
}
