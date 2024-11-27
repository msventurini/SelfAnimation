//
//  shock.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import SwiftUI

struct Shock: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.addEllipse(in: CGRect(x: 0.91267*width, y: 0.91493*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.92526*width, y: 0.83833*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.93313*width, y: 0.76948*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.96224*width, y: 0.78842*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.98899*width, y: 0.81079*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.08104*width, y: 0, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.06688*width, y: 0.28232*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.03305*width, y: 0.25908*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0, y: 0.23412*height, width: 0.00786*width, height: 0.0086*height))
        path.addEllipse(in: CGRect(x: 0.9945*width, y: 0.78239*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.93391*width, y: 0.80476*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.84343*width, y: 0.88912*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.91739*width, y: 0.88912*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.90244*width, y: 0.94334*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.89694*width, y: 0.85383*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.0299*width, y: 0.22809*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.03777*width, y: 0.32019*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.00472*width, y: 0.28318*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.11645*width, y: 0.10932*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.13533*width, y: 0.03185*height, width: 0.0055*width, height: 0.00602*height))
        path.addEllipse(in: CGRect(x: 0.0535*width, y: 0.04218*height, width: 0.0055*width, height: 0.00602*height))
        return path
    }
}
