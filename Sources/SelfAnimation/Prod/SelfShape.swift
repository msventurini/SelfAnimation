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
    
    
//    case anger = "anger"
    case anxiety = "anxiety"
//    case confusion = "confusion"
//    case disgust = "disgust"
//    case envy = "envy"
//    case fear = "fear"
//    case frustration = "frustration"
//    case overload = "overload"
//    case panic = "panic"
//    case shock = "shock"
//    case stress = "stress"
//    case tension = "tension"
//    case bravery = "bravery"
//    case euphoria = "euphoria"
//    case surprise = "surprise"
//    case pleasure = "pleasure"
//    case curiosity = "curiosity"
//    case fun = "fun"
//    case determination = "determination"
//    case fullfilment = "fullfilment"
//    case happiness = "happiness"
//    case inspiration = "inspiration"
//    case interest = "interest"
//    case joy = "joy"
    
    var ogFrame: CGRect {
        switch self {
        case .anxiety:
            return .init(x: 0, y: 0, width: 750, height: 830)
        }
    }
    
    
    var ogGap: NSNumber {
        switch self {
        case .anxiety:
            41.72
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
    
    var frame: CGRect {
        return ogFrame.insetBy(dx: ogFrame.width/4, dy: ogFrame.height/4)
    }
    
    var transform: CATransform3D {
        
        switch self {
            
            
        case .anxiety:
            return SelfShape.anxietyTransform()

        }
        
        
        
    }
    
    
    
    static func path(emotion: SelfShape, rect: CGRect) -> CGPath {
        
        switch emotion {
            
        case .anxiety:
            return anxietyPath(rect: rect)
        }
        
        
    }
    
}
