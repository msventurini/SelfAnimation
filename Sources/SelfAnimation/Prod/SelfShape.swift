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
    case disgust = "disgust"
    case envy = "envy"
    case fear = "fear"
    case frustration = "frustration"
    case overload = "overload"
    case panic = "panic"
    case shock = "shock"
    case stress = "stress"
    case tension = "tension"
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
            
        case .disgust:
            return .init(x: 0, y: 0, width: 842, height: 644)
        case .envy:
            return .init(x: 0, y: 0, width: 650, height: 750)
        case .fear:
            return .init(x: 0, y: 0, width: 750, height: 732)
        case .frustration:
            return .init(x: 0, y: 0, width: 750, height: 730)
        case .overload:
            return .init(x: 0, y: 0, width: 800, height: 850)
        case .panic:
            return .init(x: 0, y: 0, width: 870, height: 794)
        case .shock:
            return .init(x: 0, y: 0, width: 750, height: 684)
        case .tension:
            return .init(x: 0, y: 0, width: 758, height: 800)
            
            
        case .stress:
            return .init(x: 0, y: 0, width: 750, height: 606)
        case .interest:
            return .init(x: 0, y: 0, width: 808, height: 466)
        case .fullfilment:
            return .init(x: 0, y: 0, width: 750, height: 731)
        case .inspiration:
            return .init(x: 0, y: 0, width: 450, height: 908)
        case .euphoria:
            return .init(x: 0, y: 0, width: 825, height: 825)
        case .surprise:
            return .init(x: 0, y: 0, width: 1059, height: 578)
        case .pleasure:
            return .init(x: 0, y: 0, width: 1015, height: 1046)
        case .fun:
            return .init(x: 0, y: 0, width: 986, height: 989)
        case .happiness:
            return .init(x: 0, y: 0, width: 1038, height: 1036)
        case .joy:
            return .init(x: 0, y: 0, width: 762, height: 652)

        }
    }
    
    var instanceDelay: CGFloat {
        switch self {
        case .anxiety:
            -1.35
        case .curiosity, .interest:
            -0.15
        case .fun:
            0
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
        
        case .stress, .fun:
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
            
            
        case .disgust:
            return SelfShape.disgustTransform()
        case .envy:
            return SelfShape.envyTransform()
        case .fear:
            return SelfShape.fearTransform()
        case .frustration:
            return SelfShape.frustrationTransform()
        case .overload:
            return SelfShape.overloadTransform()
        case .panic:
            return SelfShape.panicTransform()
        case .shock:
            return SelfShape.shockTransform()
        case .tension:
            return SelfShape.shockTransform()
        case .stress:
            return SelfShape.stressTransform()
        case .interest:
            return SelfShape.interestTransform()
        case .fullfilment:
            return SelfShape.fullfilmentTransform()
        case .euphoria:
            return SelfShape.euphoriaTransform()
        case .surprise:
            return SelfShape.surpriseTransform()
        case .pleasure:
            return SelfShape.pleasureTransform()
        case .fun:
            return SelfShape.funTransform()
        case .happiness:
            return SelfShape.happinessTransform()
        case .inspiration:
            return SelfShape.inspirationTransform()
        case .joy:
            return SelfShape.joyTransform()
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
        case .disgust:
            return disgustPath(rect: rect)
        case .envy:
            return envyPath(rect: rect)
        case .fear:
            return fearPath(rect: rect)
        case .frustration:
            return frustrationPath(rect: rect)
        case .overload:
            return ovearloadPath(rect: rect)
        case .panic:
            return panicPath(rect: rect)
        case .shock:
            return shockPath(rect: rect)
        case .tension:
            return tensionPath(rect: rect)
        case .stress:
            return stressPath(rect: rect)
        case .interest:
            return interestPath(rect: rect)
        case .fullfilment:
            return fullfilmentShape(rect: rect)
        case .euphoria:
            return euphoriaShape(rect: rect)
        case .surprise:
            return surpriseShape(rect: rect)
        case .pleasure:
            return pleasurePath(rect: rect)
        case .fun:
            return funPath(rect: rect)
        case .happiness:
            return happinessPath(rect: rect)
        case .inspiration:
            return inspirationPath(rect: rect)
        case .joy:
            return joyPath(rect: rect)
        }
        
        
    }
    
}

#Preview(body: {
    VStack {
        
        ShapeHomeRepresentable(shape: .fun, weight: .light)
        ShapeHomeRepresentable(shape: .fun, weight: .dark)
    }
    
})
