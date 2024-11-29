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



public enum SelfShape: String, Identifiable, CaseIterable, Hashable, Sendable {
    
    public var id: String {
        return self.rawValue
    }
    
    //highbad
    case anger = "anger"
    case anxiety = "anxiety"
    case confusion = "confusion"
    case disgust = "disgust"
    case envy = "envy"
    case fear = "fear"
    case frustration = "frustration"
    case overload = "overload"
    case panic = "panic"
    case shock = "shock"
    case stress = "stress"
    case tension = "tension"
    
    //highgood
    case bravery = "bravery"
    case euphoria = "euphoria"
    case surprise = "surprise"
    case pleasure = "pleasure"
    case curiosity = "curiosity"
    case fun = "fun"
    case determination = "determination"
    case fullfilment = "fullfilment"
    case happiness = "happiness"
    case inspiration = "inspiration"
    case interest = "interest"
    case joy = "joy"
    
    
    //lowbad
    case exaustion = "exaustion"
    case guilt = "guilt"
    case impotence = "impotence"
    case loneliness = "loneliness"
    case sadness = "sadness"
    case shame = "shame"
    case worry = "worry"
    case disapointment = "disapointment"
    case apathy = "apathy"
    case boredom = "boredom"
    case despair = "despair"
    case disconnection = "disconnection"
    
    //lowGood
    case affection = "affection"
    case comfort = "comfort"
    case empathy = "empathy"
    case relaxation = "relaxation"
    case balance = "balance"
    case confidence = "confidence"
    case gratitude = "gratitude"
    case relief = "relief"
    case calm = "calm"
    case contentment = "contentment"
    case hope = "hope"
    case safety = "safety"
    
    
    static let highBadItems: Set<SelfShape> = [.anger, .anxiety, .confusion, .disgust, .envy, .fear, .frustration, .overload, .panic, .shock, .stress, .tension]
    static let highGoodItems: Set<SelfShape> = [.bravery, .euphoria, .surprise, .pleasure, .curiosity, .fun, .determination, .fullfilment, .happiness, .inspiration, .interest, .joy]
    static let lowBadItems: Set<SelfShape> = [.exaustion, .guilt, .impotence, .loneliness, .sadness, .shame, .worry, .disapointment, .apathy, .boredom, .despair, .disconnection]
    static let lowGoodItems: Set<SelfShape> = [.affection, .comfort, .empathy, .relaxation, .balance, .confidence, .gratitude, .relief, .calm, .contentment, .hope, .safety]
    
    var tintColor: CGColor {
        
        if SelfShape.highBadItems.contains(self) {
            return UIColor.highBadEmotionTint.cgColor
        } else if SelfShape.highGoodItems.contains(self) {
            return UIColor.highGoodEmotionTint.cgColor

        } else if SelfShape.lowBadItems.contains(self) {
            return UIColor.lowBadEmotionTint.cgColor

        } else if SelfShape.lowGoodItems.contains(self) {
            return UIColor.lowGoodEmotionTint.cgColor
            
        }
        
        return UIColor.black.cgColor
    }
    
    
    
    var instanceDelay: CGFloat {
        switch self {
        case .anxiety:
            -1.35
        case .curiosity, .interest:
            -0.15
        case .loneliness:
            -3
        default:
            0
        }
    }
    
    
    
    var direction: CGFloat {
        switch self {
            
        case .anger, .panic, .fun:
            return -1
        default:
            return 1
        }
    }
    
    var ogGap: NSNumber {
        switch self {
        case .anxiety, .fun:
            41.72
        case .determination:
            40.0
        case .confusion:
            35.72
        case .fullfilment:
            32.5
            
        case .stress:
            28.0
        default:
            37.5
        }
    }
    
    
    static func ogLineWidth(for weight: ShapeWeight) -> CGFloat {
        switch weight {
        case .light:
            return 7.5
        case .dark:
            return 10
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
    
}





    





