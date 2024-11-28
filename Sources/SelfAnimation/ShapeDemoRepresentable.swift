//
//  ShapeDemoRepresentable.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import SwiftUI

struct ShapeDemoRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = CALayerTesting
    
    public var selfShape: SelfShape
    public var weight: ShapeWeight
    
    let isAsyncRendered: Bool
    
    public init(shape: SelfShape, weight: ShapeWeight = .light,isAsyncRendered: Bool) {
        
        self.selfShape = shape
        self.weight = weight
        self.isAsyncRendered = isAsyncRendered
    }
    
    public func makeUIViewController(context: Context) -> CALayerTesting {
        let vc = CALayerTesting(shape: selfShape, weight: weight, isAsyncRendered: true)
        
        return vc
    }
    
    public func updateUIViewController(_ uiViewController: CALayerTesting, context: Context) {
        
    }
    
    
}

#Preview {
    ShapeDemoRepresentable(shape: .anger, isAsyncRendered: true)
}
