//
//  ShapeDemoRepresentable.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import SwiftUI

struct ShapeDemoRepresentable: UIViewControllerRepresentable {
    typealias UIViewControllerType = CALayerTesting
    
    var selfShape: SelfShape
    var weight: ShapeWeight
    
    let isAsyncRendered: Bool
    
    
    
    public init(shape: SelfShape, weight: ShapeWeight = .light,isAsyncRendered: Bool) {
        
        self.selfShape = shape
        self.weight = weight
        self.isAsyncRendered = isAsyncRendered
    }
    
    
    func makeUIViewController(context: Context) -> CALayerTesting {
        let vc = CALayerTesting(shape: selfShape, weight: weight, isAsyncRendered: true)
        
        return vc
    }
    
    func updateUIViewController(_ uiViewController: CALayerTesting, context: Context) {
        
    }
    
    
}