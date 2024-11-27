//
//  panic.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI

struct Panic: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.addEllipse(in: CGRect(x: 0.19118*width, y: 0.36385*height, width: 0.00854*width, height: 0.00935*height))
        path.addEllipse(in: CGRect(x: 0.20229*width, y: 0.3068*height, width: 0.00854*width, height: 0.00935*height))
        path.addEllipse(in: CGRect(x: 0.14505*width, y: 0.3545*height, width: 0.00854*width, height: 0.00935*height))
        path.addEllipse(in: CGRect(x: 0.18264*width, y: 0.41249*height, width: 0.00854*width, height: 0.00935*height))
        path.addEllipse(in: CGRect(x: 0.19375*width, y: 0.27406*height, width: 0.00854*width, height: 0.00935*height))
        path.addEllipse(in: CGRect(x: 0.24073*width, y: 0.25535*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.21083*width, y: 0.25535*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.18008*width, y: 0.33486*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.14932*width, y: 0.30025*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.17153*width, y: 0.38163*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.20314*width, y: 0.21046*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.30394*width, y: 0.23477*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.16812*width, y: 0.25535*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.1237*width, y: 0.26751*height, width: 0.00598*width, height: 0.00655*height))
        path.addEllipse(in: CGRect(x: 0.18777*width, y: 0.46113*height, width: 0.00598*width, height: 0.00655*height))
        return path
    }
}
