//
//  CALayerTesting.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//

import UIKit
import SwiftUI
import AVFoundation

extension UIBezierPath {
    
    convenience init(emotionShape: SelfShape,in rect: CGRect) {
        
        
        let path = SelfShape.path(emotion: emotionShape, rect: rect)
        
        self.init(cgPath: path)
        
    }
    
}

class SelfReplicatorview: UIView
{
    
    override var intrinsicContentSize: CGSize {
        return .init(width: 250, height: 250)
    }
    
    init(emotion: SelfShape) {
        
        super.init(frame: .zero)
        
        self.layer.delegate = self
        
        setNeedsLayout()
        
    }
    
    init(emotion: SelfShape, frame: CGRect) {
        
        super.init(frame: frame)
        setNeedsLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override static var layerClass:AnyClass {
        return CAReplicatorLayer.self
    }
    
    var replicatorLayer:CAReplicatorLayer {
        return self.layer as! CAReplicatorLayer
    }
    
    
    
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        print("a")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        
        
    }
    
    
}

enum KindOfSuperview {
    case homeScreen
    case emotionSelection
}



//
//
//
//#Preview {
//    let test = SelfShapeHomeView(selfShape: .bravery, weight: .dark)
//    return test
//}
