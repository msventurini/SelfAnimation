//
//  EmotionShapeAttributes.swift
//  EmotionAssets
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import UIKit

public protocol EmotionShapeAttributes {
    
    var weightType: EmotionWeight { get set }
    
    var ogFrame: CGRect { get set }
    
    var ogLineDashSpacing: NSNumber  { get set }
    
    var ogLineWidth: CGFloat { get set }
    
    var frame: CGRect { get set }
    
    var lineDashSpacing: NSNumber  { get set }
    
    var lineWidth: CGFloat { get set }

    var lineDashAnimationOffset: NSNumber { get set }
    
    var transform: CATransform3D { get set }
    
    func getPath(in rect: CGRect, for emotionWeight: EmotionWeight) -> CGPath
}
