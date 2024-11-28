//
//  ShapeHomeRepresentable.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 28/11/24.
//


import UIKit
import SwiftUI
import AVFoundation
import UIKit
import SwiftUI

public struct ShapeHomeRepresentable: UIViewRepresentable {
    
    let shape: SelfShape
    let weight: ShapeWeight
    
    public init(shape: SelfShape, weight: ShapeWeight) {
        self.shape = shape
        self.weight = weight
    }
    
    public func makeUIView(context: Context) -> SelfShapeHomeView {
        let view = SelfShapeHomeView(selfShape: shape, weight: weight)
        return view
    }
    
    public func updateUIView(_ uiView: SelfShapeHomeView, context: Context) {
        
    }
    
    public typealias UIViewType = SelfShapeHomeView
    
    public func sizeThatFits(_ proposal: ProposedViewSize, uiView: SelfShapeHomeView, context: Context) -> CGSize? {
        return uiView.intrinsicContentSize
    }
    
}