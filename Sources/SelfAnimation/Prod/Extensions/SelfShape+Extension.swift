//
//  SelfShape.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 29/11/24.
//

import UIKit

extension SelfShape {
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
        case .exaustion:
            return exaustionPath(rect: rect)
        case .guilt:
            return guiltPath(rect: rect)
        case .impotence:
            return impotencePath(rect: rect)
        case .loneliness:
            return lonelinessPath(rect: rect)
        case .sadness:
            return sadnessPath(rect: rect)
        case .shame:
            return shamePath(rect: rect)
        case .worry:
            return worryPath(rect: rect)
        case .disapointment:
            return disapointmentPath(rect: rect)
        case .apathy:
            return apathyPath(rect: rect)
        case .boredom:
            return boredomPath(rect: rect)
        case .despair:
            return despairPath(rect: rect)
        case .disconnection:
            return disconnectionPath(rect: rect)
        case .affection:
            return affectionPath(rect: rect)
        case .comfort:
            return comfortPath(rect: rect)
        case .empathy:
            return empathyPath(rect: rect)
        case .relaxation:
            return relaxationPath(rect: rect)
        case .balance:
            return balancePath(rect: rect)
        case .confidence:
            return confusionPath(rect: rect)
        case .gratitude:
            return gratitudePath(rect: rect)
        case .relief:
            return reliefPath(rect: rect)
        case .calm:
            return calmPath(rect: rect)
        case .contentment:
            return contentmentPath(rect: rect)
        case .hope:
            return hopePath(rect: rect)
        case .safety:
            return safetyPath(rect: rect)
        }
        
        
    }
    
    static func ogFrame(shape: SelfShape) -> CGRect {
        switch shape {
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
            
            
        case .exaustion:
            return .init(x: 0, y: 0, width: 750, height: 408)
        case .guilt:
            return .init(x: 0, y: 0, width: 682, height: 410)
            
        case .impotence:
            return .init(x: 0, y: 0, width: 768, height: 450)
            
        case .loneliness:
            return .init(x: 0, y: 0, width: 375, height: 375)
            
        case .sadness:
            return .init(x: 0, y: 0, width: 752, height: 188)
            
        case .shame:
            return .init(x: 0, y: 0, width: 748, height: 410)
            
        case .worry:
            return .init(x: 0, y: 0, width: 750, height: 330)
            
        case .disapointment:
            return .init(x: 0, y: 0, width: 704, height: 356)
        case .apathy:
            return .init(x: 0, y: 0, width: 750, height: 274)
        case .boredom:
            return .init(x: 0, y: 0, width: 750, height: 375)
        case .despair:
            return .init(x: 0, y: 0, width: 750, height: 302)
        case .disconnection:
            return .init(x: 0, y: 0, width: 750, height: 375)
        case .affection:
            return .init(x: 0, y: 0, width: 750, height: 457)
        case .comfort:
            return .init(x: 0, y: 0, width: 750, height: 462)
        case .empathy:
            return .init(x: 0, y: 0, width: 714, height: 433)
        case .relaxation:
            return .init(x: 0, y: 0, width: 774, height: 357)
        case .balance:
            return .init(x: 0, y: 0, width: 750, height: 478)
        case .confidence:
            return .init(x: 0, y: 0, width: 713, height: 392)
        case .gratitude:
            return .init(x: 0, y: 0, width: 556, height: 446)
        case .relief:
            return .init(x: 0, y: 0, width: 498, height: 412)
        case .calm:
            return .init(x: 0, y: 0, width: 750, height: 441)
        case .contentment:
            return .init(x: 0, y: 0, width: 758, height: 347)
        case .hope:
            return .init(x: 0, y: 0, width: 684, height: 440)
        case .safety:
            return .init(x: 0, y: 0, width: 736, height: 520)
        }
    }
    
    static func transform(shape: SelfShape) -> CATransform3D {
        
        switch shape {
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
        case .exaustion:
            return SelfShape.exaustionTransform()
        case .guilt:
            return SelfShape.guiltTransform()
        case .impotence:
            return SelfShape.impotenceTransform()
        case .loneliness:
            return SelfShape.lonelinessTransform()
        case .sadness:
            return SelfShape.sadnessTransform()
        case .shame:
            return SelfShape.shameTransform()
        case .worry:
            return SelfShape.worryTransform()
        case .disapointment:
            return SelfShape.disapointmentTransform()
        case .apathy:
            return SelfShape.apathyTransform()
        case .boredom:
            return SelfShape.boredomTransform()
        case .despair:
            return SelfShape.despairTransform()
        case .disconnection:
            return SelfShape.disconnectionTransform()
        case .affection:
            return SelfShape.affectionTransform()
        case .comfort:
            return SelfShape.comfortTransform()
        case .empathy:
            return SelfShape.empathyTransform()
        case .relaxation:
            return SelfShape.relaxationTransform()
        case .balance:
            return SelfShape.balanceTransform()
        case .confidence:
            return SelfShape.confidenceTransform()
        case .gratitude:
            return SelfShape.gratitudeTransform()
        case .relief:
            return SelfShape.reliefTransform()
        case .calm:
            return SelfShape.calmTransform()
        case .contentment:
            return SelfShape.contentmentTransform()
        case .hope:
            return SelfShape.hopeTransform()
        case .safety:
            return SelfShape.safetyTransform()
        }
        
        
        
    }
}


