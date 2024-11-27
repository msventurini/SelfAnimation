//
//  overload.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI

struct Overload: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.addEllipse(in: CGRect(x: 0.88854*width, y: 0.59017*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.88854*width, y: 0.63471*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.81809*width, y: 0.65829*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.74299*width, y: 0.72292*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.74485*width, y: 0.76134*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.09124*width, y: 0.2819*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.1274*width, y: 0.37185*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.13018*width, y: 0.41639*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.11257*width, y: 0.32993*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.17005*width, y: 0.44258*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.08661*width, y: 0.39368*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.10052*width, y: 0.36137*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.04025*width, y: 0.33429*height, width: 0.00927*width, height: 0.00873*height))
        path.addEllipse(in: CGRect(x: 0.07827*width, y: 0.34041*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.08105*width, y: 0.30809*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.11349*width, y: 0.39543*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.13945*width, y: 0.45132*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.05231*width, y: 0.30198*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.0931*width, y: 0.22862*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.17654*width, y: 0.47402*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.16448*width, y: 0.41202*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.86259*width, y: 0.62161*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.91728*width, y: 0.55786*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.83107*width, y: 0.63122*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.76895*width, y: 0.74388*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.77266*width, y: 0.68973*height, width: 0.00649*width, height: 0.00611*height))
        path.addEllipse(in: CGRect(x: 0.91728*width, y: 0.64432*height, width: 0.00649*width, height: 0.00611*height))
        return path
    }
}
