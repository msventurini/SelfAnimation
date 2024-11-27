//
//  EmotionShapeProtocol.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 26/11/24.
//

import UIKit

protocol EmotionShapePath {
    
    static func cgPath(in rect: CGRect) -> CGPath
    
}
