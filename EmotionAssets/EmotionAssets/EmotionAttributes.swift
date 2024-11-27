//
//  EmotionAttributes.swift
//  EmotionAssets
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


//
//  AssetEnum.swift
//  SharedAssets
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import SwiftUI
import UIKit






public enum EmotionAttributes: Int, Identifiable, CaseIterable, Hashable {
    
    public var id: Int {
        return self.rawValue
    }
    
    case bravery = 0
    case fullfilment
    case interest
    case curiosity
    case fun
    case joy
    case determination
    case happiness
    case pleasure
    case euphoria
    case inspiration
    case surprise
    case anger
    case disgust
    case frustration
    case shock
    case anxiety
    case envy
    case overload
    case stress
    case confusion
    case fear
    case panic
    case tension
    
    public static var good: [EmotionAttributes] = [.bravery, .fullfilment, .interest, .curiosity, .fun, .joy, .determination, .happiness, .pleasure, .euphoria, .inspiration, .surprise]
    
    public static var bad: [EmotionAttributes] = [.anger, .disgust, .frustration, .shock, .anxiety, .envy, .overload, .stress, .confusion, .fear, .panic, .tension]
    
    public var lightShapeAttributes: EmotionShapeAttributes? {
        return nil
    }
    public var darkShapeAttributes: EmotionShapeAttributes? {
        return nil
    }
    
    public var isGood: Bool {
        if EmotionAttributes.good.contains(self) {
            return true
        } else {
            return false
        }
    }
    
    public var isBad: Bool {
        !isGood
    }
    
    public var emotionSufix: String {
        if isGood {
            return "HighGoodAnd"
        } else {
            return "HighBadAnd"
        }
        
    }
    
    
    public var name: String {
        switch self {
        case .bravery:  "bravery"
        case .fullfilment:  "fullfilment"
        case .interest:  "interest"
        case .curiosity:  "curiosity"
        case .fun:  "fun"
        case .joy:  "joy"
        case .determination:  "determination"
        case .happiness:  "happiness"
        case .pleasure:  "pleasure"
        case .euphoria:  "euphoria"
        case .inspiration:  "inspiration"
        case .surprise:  "surprise"
        case .anger:  "anger"
        case .disgust:  "disgust"
        case .frustration:  "frustration"
        case .shock:  "shock"
        case .anxiety:  "anxiety"
        case .envy:  "envy"
        case .overload:  "overload"
        case .stress:  "stress"
        case .confusion:  "confusion"
        case .fear:  "fear"
        case .panic:  "panic"
        case .tension:  "tension"
            
        }
    }
    
    public func image(emotionType: EmotionShapeAttributes) -> Image {
        
        guard let bundle = Bundle(identifier: "com.msventurini.EmotionAssets") else {
            fatalError()
        }
        print("\(self.emotionSufix)\(emotionType)/\(self.name)")
        
        return Image("\(self.emotionSufix)\(emotionType)/\(self.name)", bundle: bundle)
        
        
    }
    
}




