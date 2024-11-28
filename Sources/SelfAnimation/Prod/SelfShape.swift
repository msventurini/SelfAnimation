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

public enum ShapeWeight {
    case light
    case dark
}



public enum SelfShape: String, Identifiable, CaseIterable, Hashable {
    
    public var id: String {
        return self.rawValue
    }
    
    
    case anger = "anger"
    case anxiety = "anxiety"
    case confusion = "confusion"
//    case disgust = "disgust"
//    case envy = "envy"
//    case fear = "fear"
//    case frustration = "frustration"
//    case overload = "overload"
//    case panic = "panic"
//    case shock = "shock"
//    case stress = "stress"
//    case tension = "tension"
    case bravery = "bravery"
//    case euphoria = "euphoria"
//    case surprise = "surprise"
//    case pleasure = "pleasure"
    case curiosity = "curiosity"
//    case fun = "fun"
    case determination = "determination"
//    case fullfilment = "fullfilment"
//    case happiness = "happiness"
//    case inspiration = "inspiration"
//    case interest = "interest"
//    case joy = "joy"

    var ogFrame: CGRect {
        switch self {
        case .anxiety:
            return .init(x: 0, y: 0, width: 1092, height: 1146)
        case .anger:
            return .init(x: 0, y: 0, width: 750, height: 750)
        case .confusion:
            return .init(x: 0, y: 0, width: 842, height: 842)
        case .bravery:
            return .init(x: 0, y: 0, width: 848, height: 1204)
        case .curiosity:
            return .init(x: 0, y: 0, width: 752, height: 478)
        case .determination:
            return .init(x: 0, y: 0, width: 814, height: 668)
            
        }
    }
    
    var instanceDelay: CGFloat {
        switch self {
        case .anxiety:
            -1.35
        case .curiosity:
            -0.15
        default:
            0
        }
    }
    
    var direction: CGFloat {
        switch self {
        
        case .anger:
            return -1
        default:
            return 1
        }
    }
    
    var ogGap: NSNumber {
        switch self {
        case .anxiety:
            41.72
        
        case .confusion:
            35.72
        case .determination:
            40.0
        default:
            37.5
        }
    }
    
    
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
    
    
    
    func lineDashSpacing(for weight: ShapeWeight) -> NSNumber {
        return NSNumber(floatLiteral: Double(self.ogGap.doubleValue * 0.5 + SelfShape.lineWidth(for: weight)  * 0.01))
    }
    
    var lineDashAnimationOffset: NSNumber {
        return NSNumber(floatLiteral: (self.ogGap.doubleValue+0.5) )
    }
    
    
    var transform: CATransform3D {
        
        switch self {
            
            
        case .anxiety:
            return SelfShape.anxietyTransform()
        case .anger:
            return SelfShape.angerTransform()

        case .confusion:
            return SelfShape.confusionTransform()
        
        case .bravery:
            return SelfShape.braveryTransform()
            
            
        case .curiosity:
            return SelfShape.curiosityTransform()
            
        case .determination:
            return SelfShape.determinationTransform()
            
            
        }
        
        
        
    }
    
    
    
    static func path(emotion: SelfShape, rect: CGRect) -> CGPath {
        
        switch emotion {
            
        case .anxiety:
            return anxietyPath(rect: rect)
        case .anger:
            return angerPath(rect: rect)
            
        case .confusion:
            return confusionPath(rect: rect)
        case .bravery:
            return SelfShape.braveryShape(rect: rect)
        case .curiosity:
            return SelfShape.curiosityShape(rect: rect)
            
        case .determination:
            return SelfShape.determinationShape(rect: rect)
        }
        
        
    }
    
}

#Preview(body: {
    VStack {
        
        ShapeHomeRepresentable(shape: .curiosity, weight: .light)
        ShapeHomeRepresentable(shape: .curiosity, weight: .dark)
    }
    
})
