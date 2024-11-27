//
//  CALayerTesting.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//

import UIKit
import SwiftUI
import AVFoundation

public class CALayerTesting: UIViewController {
    
    var selfShape: SelfShape
    var weight: ShapeWeight
    
    let isAsyncRendered: Bool
    
    
    
    public init(shape: SelfShape, weight: ShapeWeight = .light,isAsyncRendered: Bool) {
        
        self.selfShape = shape
        self.weight = weight
        self.isAsyncRendered = isAsyncRendered
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let uit = UIView(frame: selfShape.frame)
        let testeLayer = CALayer()
        
        uit.center = view.center
        
        testeLayer.frame = uit.bounds
        
        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, SelfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        
        let path = CGMutablePath()
        path.addPath(UIBezierPath(emotionShape: selfShape,in: testeLayer.frame).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = uit.bounds
        
        testeLayer.addSublayer(shapeLayer)
        let replicated = getReplicatorLayer(inputLayer: testeLayer, numberOfLayers: 30)
        replicated.frame = testeLayer.bounds
        uit.layer.addSublayer(replicated)
        view.addSubview(uit)
        
        replicated.drawsAsynchronously = true
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 3
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
    }
    
    func getReplicatorLayer(inputLayer: CALayer,numberOfLayers: Int) -> CAReplicatorLayer {
        
        let replicatorLayer = CAReplicatorLayer()
        let numberOfInstances: Int = numberOfLayers
        replicatorLayer.instanceCount = numberOfInstances
        let newTransform = selfShape.transform
        replicatorLayer.instanceTransform = newTransform
        replicatorLayer.addSublayer(inputLayer)
        replicatorLayer.drawsAsynchronously = isAsyncRendered

        return replicatorLayer
    }
}



extension UIBezierPath {
    
    convenience init(emotionShape: SelfShape,in rect: CGRect) {
        
        
        let path = SelfShape.path(emotion: emotionShape, rect: rect)
        
        self.init(cgPath: path)
        
    }

}






import UIKit
import SwiftUI
    

public enum ShapeWeight {
case light
case dark
}

extension SelfShape {
    
    static func braveryShape(rect: CGRect) -> CGPath{
        
        
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.33662*width, y: 0.99215*height))
        path.addCurve(to: CGPoint(x: 0.00002*width, y: 0.69903*height), control1: CGPoint(x: 0.30048*width, y: 1.00916*height), control2: CGPoint(x: -0.00293*width, y: 0.87017*height))
        path.addCurve(to: CGPoint(x: 0.04409*width, y: 0.57103*height), control1: CGPoint(x: 0.00042*width, y: 0.6763*height), control2: CGPoint(x: 0.00668*width, y: 0.62578*height))
        path.addCurve(to: CGPoint(x: 0.17833*width, y: 0.42383*height), control1: CGPoint(x: 0.08939*width, y: 0.50477*height), control2: CGPoint(x: 0.13854*width, y: 0.49344*height))
        path.addCurve(to: CGPoint(x: 0.22039*width, y: 0.3176*height), control1: CGPoint(x: 0.21397*width, y: 0.36149*height), control2: CGPoint(x: 0.20454*width, y: 0.31807*height))
        path.addCurve(to: CGPoint(x: 0.26247*width, y: 0.42768*height), control1: CGPoint(x: 0.2383*width, y: 0.31706*height), control2: CGPoint(x: 0.26746*width, y: 0.37191*height))
        path.addCurve(to: CGPoint(x: 0.24644*width, y: 0.49424*height), control1: CGPoint(x: 0.25876*width, y: 0.46909*height), control2: CGPoint(x: 0.23799*width, y: 0.49133*height))
        path.addCurve(to: CGPoint(x: 0.39069*width, y: 0.36112*height), control1: CGPoint(x: 0.26122*width, y: 0.49932*height), control2: CGPoint(x: 0.35439*width, y: 0.44151*height))
        path.addCurve(to: CGPoint(x: 0.3967*width, y: 0.16528*height), control1: CGPoint(x: 0.42971*width, y: 0.2747*height), control2: CGPoint(x: 0.36502*width, y: 0.24634*height))
        path.addCurve(to: CGPoint(x: 0.6191*width, y: 0.00144*height), control1: CGPoint(x: 0.43618*width, y: 0.0643*height), control2: CGPoint(x: 0.58338*width, y: -0.01148*height))
        path.addCurve(to: CGPoint(x: 0.59707*width, y: 0.11791*height), control1: CGPoint(x: 0.64332*width, y: 0.01019*height), control2: CGPoint(x: 0.60113*width, y: 0.05423*height))
        path.addCurve(to: CGPoint(x: 0.97774*width, y: 0.59407*height), control1: CGPoint(x: 0.58541*width, y: 0.3007*height), control2: CGPoint(x: 0.90624*width, y: 0.35764*height))
        path.addCurve(to: CGPoint(x: 0.9597*width, y: 0.77455*height), control1: CGPoint(x: 1.00429*width, y: 0.68188*height), control2: CGPoint(x: 0.98026*width, y: 0.74089*height))
        path.addCurve(to: CGPoint(x: 0.77137*width, y: 0.90895*height), control1: CGPoint(x: 0.90832*width, y: 0.85867*height), control2: CGPoint(x: 0.7965*width, y: 0.91885*height))
        path.addCurve(to: CGPoint(x: 0.81545*width, y: 0.74511*height), control1: CGPoint(x: 0.74621*width, y: 0.89903*height), control2: CGPoint(x: 0.84316*width, y: 0.83273*height))
        path.addCurve(to: CGPoint(x: 0.64715*width, y: 0.54799*height), control1: CGPoint(x: 0.78768*width, y: 0.65731*height), control2: CGPoint(x: 0.66493*width, y: 0.64361*height))
        path.addCurve(to: CGPoint(x: 0.65316*width, y: 0.45072*height), control1: CGPoint(x: 0.63744*width, y: 0.49572*height), control2: CGPoint(x: 0.66544*width, y: 0.45306*height))
        path.addCurve(to: CGPoint(x: 0.58504*width, y: 0.53264*height), control1: CGPoint(x: 0.64101*width, y: 0.44839*height), control2: CGPoint(x: 0.59906*width, y: 0.48743*height))
        path.addCurve(to: CGPoint(x: 0.67119*width, y: 0.77967*height), control1: CGPoint(x: 0.55271*width, y: 0.63694*height), control2: CGPoint(x: 0.69695*width, y: 0.68411*height))
        path.addCurve(to: CGPoint(x: 0.53294*width, y: 0.90128*height), control1: CGPoint(x: 0.65068*width, y: 0.8558*height), control2: CGPoint(x: 0.54172*width, y: 0.90494*height))
        path.addCurve(to: CGPoint(x: 0.58103*width, y: 0.7976*height), control1: CGPoint(x: 0.52612*width, y: 0.89842*height), control2: CGPoint(x: 0.5727*width, y: 0.8604*height))
        path.addCurve(to: CGPoint(x: 0.567*width, y: 0.7272*height), control1: CGPoint(x: 0.58423*width, y: 0.77343*height), control2: CGPoint(x: 0.58679*width, y: 0.75068*height))
        path.addCurve(to: CGPoint(x: 0.43878*width, y: 0.676*height), control1: CGPoint(x: 0.54268*width, y: 0.69831*height), control2: CGPoint(x: 0.4908*width, y: 0.67583*height))
        path.addCurve(to: CGPoint(x: 0.27449*width, y: 0.77712*height), control1: CGPoint(x: 0.35773*width, y: 0.67626*height), control2: CGPoint(x: 0.29653*width, y: 0.73399*height))
        path.addCurve(to: CGPoint(x: 0.3366*width, y: 0.99216*height), control1: CGPoint(x: 0.22013*width, y: 0.88352*height), control2: CGPoint(x: 0.36412*width, y: 0.9792*height))
        path.addLine(to: CGPoint(x: 0.33662*width, y: 0.99215*height))
        path.closeSubpath()
        return path
        
    }
    
    static func euphoriaShape(rect: CGRect) -> CGPath{

        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height

        
        path.move(to: CGPoint(x: 0.52928*width, y: 0.20446*height))
                    path.addLine(to: CGPoint(x: 0.65981*width, y: 0.01936*height))
                    path.addCurve(to: CGPoint(x: 0.72525*width, y: 0.04651*height), control1: CGPoint(x: 0.68213*width, y: -0.01231*height), control2: CGPoint(x: 0.73182*width, y: 0.00831*height))
                    path.addLine(to: CGPoint(x: 0.68685*width, y: 0.26984*height))
                    path.addCurve(to: CGPoint(x: 0.7288*width, y: 0.31185*height), control1: CGPoint(x: 0.68258*width, y: 0.29459*height), control2: CGPoint(x: 0.70408*width, y: 0.31612*height))
                    path.addLine(to: CGPoint(x: 0.9518*width, y: 0.27338*height))
                    path.addCurve(to: CGPoint(x: 0.97891*width, y: 0.33893*height), control1: CGPoint(x: 0.98994*width, y: 0.2668*height), control2: CGPoint(x: 1.01053*width, y: 0.31657*height))
                    path.addLine(to: CGPoint(x: 0.79407*width, y: 0.46965*height))
                    path.addCurve(to: CGPoint(x: 0.79407*width, y: 0.52906*height), control1: CGPoint(x: 0.77358*width, y: 0.48414*height), control2: CGPoint(x: 0.77358*width, y: 0.51457*height))
                    path.addLine(to: CGPoint(x: 0.97891*width, y: 0.65978*height))
                    path.addCurve(to: CGPoint(x: 0.9518*width, y: 0.72532*height), control1: CGPoint(x: 1.01053*width, y: 0.68213*height), control2: CGPoint(x: 0.98994*width, y: 0.7319*height))
                    path.addLine(to: CGPoint(x: 0.7288*width, y: 0.68686*height))
                    path.addCurve(to: CGPoint(x: 0.68685*width, y: 0.72886*height), control1: CGPoint(x: 0.70408*width, y: 0.68259*height), control2: CGPoint(x: 0.68258*width, y: 0.70411*height))
                    path.addLine(to: CGPoint(x: 0.72525*width, y: 0.95219*height))
                    path.addCurve(to: CGPoint(x: 0.65981*width, y: 0.97934*height), control1: CGPoint(x: 0.73182*width, y: 0.99038*height), control2: CGPoint(x: 0.68213*width, y: 1.011*height))
                    path.addLine(to: CGPoint(x: 0.52928*width, y: 0.79423*height))
                    path.addCurve(to: CGPoint(x: 0.46995*width, y: 0.79423*height), control1: CGPoint(x: 0.51481*width, y: 0.77372*height), control2: CGPoint(x: 0.48442*width, y: 0.77372*height))
                    path.addLine(to: CGPoint(x: 0.33942*width, y: 0.97934*height))
                    path.addCurve(to: CGPoint(x: 0.27397*width, y: 0.95219*height), control1: CGPoint(x: 0.3171*width, y: 1.011*height), control2: CGPoint(x: 0.2674*width, y: 0.99038*height))
                    path.addLine(to: CGPoint(x: 0.31238*width, y: 0.72886*height))
                    path.addCurve(to: CGPoint(x: 0.27044*width, y: 0.68686*height), control1: CGPoint(x: 0.31665*width, y: 0.70411*height), control2: CGPoint(x: 0.29515*width, y: 0.68259*height))
                    path.addLine(to: CGPoint(x: 0.04743*width, y: 0.72532*height))
                    path.addCurve(to: CGPoint(x: 0.02032*width, y: 0.65978*height), control1: CGPoint(x: 0.00929*width, y: 0.7319*height), control2: CGPoint(x: -0.0113*width, y: 0.68213*height))
                    path.addLine(to: CGPoint(x: 0.20515*width, y: 0.52906*height))
                    path.addCurve(to: CGPoint(x: 0.20515*width, y: 0.46965*height), control1: CGPoint(x: 0.22565*width, y: 0.51457*height), control2: CGPoint(x: 0.22565*width, y: 0.48414*height))
                    path.addLine(to: CGPoint(x: 0.02032*width, y: 0.33893*height))
                    path.addCurve(to: CGPoint(x: 0.04743*width, y: 0.27338*height), control1: CGPoint(x: -0.0113*width, y: 0.31657*height), control2: CGPoint(x: 0.00929*width, y: 0.2668*height))
                    path.addLine(to: CGPoint(x: 0.27044*width, y: 0.31185*height))
                    path.addCurve(to: CGPoint(x: 0.31238*width, y: 0.26984*height), control1: CGPoint(x: 0.29515*width, y: 0.31612*height), control2: CGPoint(x: 0.31665*width, y: 0.29459*height))
                    path.addLine(to: CGPoint(x: 0.27397*width, y: 0.04651*height))
                    path.addCurve(to: CGPoint(x: 0.33942*width, y: 0.01936*height), control1: CGPoint(x: 0.2674*width, y: 0.00831*height), control2: CGPoint(x: 0.3171*width, y: -0.01231*height))
                    path.addLine(to: CGPoint(x: 0.46995*width, y: 0.20446*height))
                    path.addCurve(to: CGPoint(x: 0.52928*width, y: 0.20446*height), control1: CGPoint(x: 0.48442*width, y: 0.22499*height), control2: CGPoint(x: 0.51481*width, y: 0.22499*height))
                    path.closeSubpath()
        
        
        path.closeSubpath()
        return path
        
    }
    
    
    static func surpriseShape(rect: CGRect) -> CGPath{
        let path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        
            path.move(to: CGPoint(x: 0.20358*width, y: 0.71124*height))
            path.addCurve(to: CGPoint(x: 0.40717*width, y: 0.35562*height), control1: CGPoint(x: 0.31602*width, y: 0.71124*height), control2: CGPoint(x: 0.40717*width, y: 0.55202*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0), control1: CGPoint(x: 0.40717*width, y: 0.15922*height), control2: CGPoint(x: 0.31602*width, y: 0))
            path.addCurve(to: CGPoint(x: 0, y: 0.35562*height), control1: CGPoint(x: 0.09115*width, y: 0), control2: CGPoint(x: 0, y: 0.15922*height))
            path.addCurve(to: CGPoint(x: 0.20358*width, y: 0.71124*height), control1: CGPoint(x: 0, y: 0.55202*height), control2: CGPoint(x: 0.09115*width, y: 0.71124*height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.47313*width, y: height))
            path.addCurve(to: CGPoint(x: 0.67672*width, y: 0.64438*height), control1: CGPoint(x: 0.58557*width, y: height), control2: CGPoint(x: 0.67672*width, y: 0.84078*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: 0.28876*height), control1: CGPoint(x: 0.67672*width, y: 0.44798*height), control2: CGPoint(x: 0.58557*width, y: 0.28876*height))
            path.addCurve(to: CGPoint(x: 0.26955*width, y: 0.64438*height), control1: CGPoint(x: 0.36069*width, y: 0.28876*height), control2: CGPoint(x: 0.26955*width, y: 0.44798*height))
            path.addCurve(to: CGPoint(x: 0.47313*width, y: height), control1: CGPoint(x: 0.26955*width, y: 0.84078*height), control2: CGPoint(x: 0.36069*width, y: height))
            path.closeSubpath()
            path.move(to: CGPoint(x: 0.79642*width, y: 0.94737*height))
            path.addCurve(to: CGPoint(x: width, y: 0.59175*height), control1: CGPoint(x: 0.90885*width, y: 0.94737*height), control2: CGPoint(x: width, y: 0.78815*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.23613*height), control1: CGPoint(x: width, y: 0.39534*height), control2: CGPoint(x: 0.90885*width, y: 0.23613*height))
            path.addCurve(to: CGPoint(x: 0.59283*width, y: 0.59175*height), control1: CGPoint(x: 0.68398*width, y: 0.23613*height), control2: CGPoint(x: 0.59283*width, y: 0.39534*height))
            path.addCurve(to: CGPoint(x: 0.79642*width, y: 0.94737*height), control1: CGPoint(x: 0.59283*width, y: 0.78815*height), control2: CGPoint(x: 0.68398*width, y: 0.94737*height))
            path.closeSubpath()

        return path
        }
    
    //precisa de ajustes
    static func curiosityShape(rect: CGRect) -> CGPath {
        var path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.6*width, y: 0.50007*height))
        path.addCurve(to: CGPoint(x: 0.50098*width, y: 0.6546*height), control1: CGPoint(x: 0.6*width, y: 0.58542*height), control2: CGPoint(x: 0.55567*width, y: 0.6546*height))
        path.addCurve(to: CGPoint(x: 0.40197*width, y: 0.50007*height), control1: CGPoint(x: 0.4463*width, y: 0.6546*height), control2: CGPoint(x: 0.40197*width, y: 0.58542*height))
        path.addCurve(to: CGPoint(x: 0.50098*width, y: 0.34554*height), control1: CGPoint(x: 0.40197*width, y: 0.41473*height), control2: CGPoint(x: 0.4463*width, y: 0.34554*height))
        path.addCurve(to: CGPoint(x: 0.6*width, y: 0.50007*height), control1: CGPoint(x: 0.55567*width, y: 0.34554*height), control2: CGPoint(x: 0.6*width, y: 0.41473*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.00495*width, y: 0.48828*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.00769*height), control1: CGPoint(x: 0.00495*width, y: 0.22287*height), control2: CGPoint(x: 0.2266*width, y: 0.00769*height))
        path.addCurve(to: CGPoint(x: 0.99509*width, y: 0.48828*height), control1: CGPoint(x: 0.78993*width, y: 0.00769*height), control2: CGPoint(x: 1.01985*width, y: 0.40609*height))
        path.addCurve(to: CGPoint(x: 0.79707*width, y: 0.513*height), control1: CGPoint(x: 0.98186*width, y: 0.53225*height), control2: CGPoint(x: 0.90501*width, y: 0.45698*height))
        path.addCurve(to: CGPoint(x: 0.50002*width, y: 0.96886*height), control1: CGPoint(x: 0.62699*width, y: 0.60129*height), control2: CGPoint(x: 0.62883*width, y: 0.88618*height))
        path.addCurve(to: CGPoint(x: 0.00495*width, y: 0.48828*height), control1: CGPoint(x: 0.32921*width, y: 1.07852*height), control2: CGPoint(x: 0.00495*width, y: 0.78535*height))
        path.closeSubpath()
        return path
    }
    
    static func determinationShape(rect: CGRect) -> CGPath {
        var path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.3303*width, y: 0.05122*height))
        path.addLine(to: CGPoint(x: 0.03217*width, y: 0.45762*height))
        path.addCurve(to: CGPoint(x: 0.1002*width, y: 0.71023*height), control1: CGPoint(x: -0.03244*width, y: 0.54569*height), control2: CGPoint(x: 0.00536*width, y: 0.68604*height))
        path.addLine(to: CGPoint(x: 0.53787*width, y: 0.82189*height))
        path.addCurve(to: CGPoint(x: 0.68324*width, y: 0.62372*height), control1: CGPoint(x: 0.63272*width, y: 0.84609*height), control2: CGPoint(x: 0.71348*width, y: 0.736*height))
        path.addLine(to: CGPoint(x: 0.54369*width, y: 0.10566*height))
        path.addCurve(to: CGPoint(x: 0.3303*width, y: 0.05122*height), control1: CGPoint(x: 0.51347*width, y: -0.0066*height), control2: CGPoint(x: 0.3949*width, y: -0.03685*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45307*width, y: 0.28021*height))
        path.addLine(to: CGPoint(x: 0.31723*width, y: 0.79973*height))
        path.addCurve(to: CGPoint(x: 0.46401*width, y: 0.99634*height), control1: CGPoint(x: 0.2878*width, y: 0.91232*height), control2: CGPoint(x: 0.36934*width, y: 1.02154*height))
        path.addLine(to: CGPoint(x: 0.90087*width, y: 0.88004*height))
        path.addCurve(to: CGPoint(x: 0.9671*width, y: 0.62672*height), control1: CGPoint(x: 0.99554*width, y: 0.85484*height), control2: CGPoint(x: 1.03234*width, y: 0.71411*height))
        path.addLine(to: CGPoint(x: 0.66609*width, y: 0.22351*height))
        path.addCurve(to: CGPoint(x: 0.45307*width, y: 0.28022*height), control1: CGPoint(x: 0.60085*width, y: 0.13612*height), control2: CGPoint(x: 0.48251*width, y: 0.16763*height))
        path.addLine(to: CGPoint(x: 0.45307*width, y: 0.28021*height))
        path.closeSubpath()
        return path
    }
    
    static func fullfilmentShape(rect: CGRect) -> CGPath {
        var path = CGMutablePath()
        
                let width = rect.size.width
                let height = rect.size.height
                path.move(to: CGPoint(x: 1.03903*width, y: 0.52785*height))
                path.addCurve(to: CGPoint(x: 0.54377*width, y: 1.02302*height), control1: CGPoint(x: 1.03903*width, y: 0.80133*height), control2: CGPoint(x: 0.81729*width, y: 1.02302*height))
                path.addCurve(to: CGPoint(x: 0.04853*width, y: 0.52785*height), control1: CGPoint(x: 0.27026*width, y: 1.02302*height), control2: CGPoint(x: 0.04853*width, y: 0.80133*height))
                path.addCurve(to: CGPoint(x: 0.54377*width, y: 0.03268*height), control1: CGPoint(x: 0.04853*width, y: 0.25437*height), control2: CGPoint(x: 0.27026*width, y: 0.03268*height))
                path.addCurve(to: CGPoint(x: 1.03903*width, y: 0.52785*height), control1: CGPoint(x: 0.81729*width, y: 0.03268*height), control2: CGPoint(x: 1.03903*width, y: 0.25437*height))
                path.closeSubpath()
            
            
        
        return path
    }
    
    struct MyIcon: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 1.03903*width, y: 0.52785*height))
            path.addCurve(to: CGPoint(x: 0.54377*width, y: 1.02302*height), control1: CGPoint(x: 1.03903*width, y: 0.80133*height), control2: CGPoint(x: 0.81729*width, y: 1.02302*height))
            path.addCurve(to: CGPoint(x: 0.04853*width, y: 0.52785*height), control1: CGPoint(x: 0.27026*width, y: 1.02302*height), control2: CGPoint(x: 0.04853*width, y: 0.80133*height))
            path.addCurve(to: CGPoint(x: 0.54377*width, y: 0.03268*height), control1: CGPoint(x: 0.04853*width, y: 0.25437*height), control2: CGPoint(x: 0.27026*width, y: 0.03268*height))
            path.addCurve(to: CGPoint(x: 1.03903*width, y: 0.52785*height), control1: CGPoint(x: 0.81729*width, y: 0.03268*height), control2: CGPoint(x: 1.03903*width, y: 0.25437*height))
            path.closeSubpath()
            return path
        }
    }
    
    }



class SelfShapeHomeView: UIView {
    
    override var intrinsicContentSize: CGSize {
        return .init(width: 250, height: 250)
    }
    
    var selfShape: SelfShape
    var weight: ShapeWeight
    
    init(selfShape: SelfShape, weight: ShapeWeight) {
        
        self.selfShape = selfShape
        self.weight = weight
        
        super.init(frame: .zero)
        
        let replicator = SelfReplicatorview(emotion: selfShape, frame: .init(x: 0, y: 0, width: 250, height: 250))
        
        addSubview(replicator)
        
        replicator.center = .init(x: frame.maxX, y: frame.maxY)

        let shapeLayer = CAShapeLayer()

        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, SelfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.masksToBounds = false
        
        
        let newSize = AVMakeRect(aspectRatio: selfShape.frame.size, insideRect: replicator.bounds)//.offsetBy(dx: 125, dy: 125)

//        path.addPath(UIBezierPath(emotionShape: selfShape, in: newSize).cgPath)
        shapeLayer.path = SelfShape.braveryShape(rect: newSize)
        shapeLayer.frame = newSize
        
        replicator.replicatorLayer.addSublayer(shapeLayer)
        
        replicator.replicatorLayer.instanceCount = 30
        let newTransform = selfShape.transform
        replicator.replicatorLayer.instanceTransform = newTransform
        replicator.replicatorLayer.drawsAsynchronously = true
        
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 3
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class testeRepVC: UIViewController {
    
    var selfShape: SelfShape = .bravery
    var weight: ShapeWeight = .light

    
    override func viewDidLoad() {
        let replicator = SelfReplicatorview(emotion: selfShape, frame: .init(x: 0, y: 0, width: 250, height: 250))
        replicator.backgroundColor = .purple
        
        view.addSubview(replicator)
        
        replicator.center = view.center

        let shapeLayer = CAShapeLayer()
        
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineWidth = SelfShape.lineWidth(for: weight)
        shapeLayer.lineDashPattern = [0, SelfShape.lineDashSpacing(for: weight)]
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.masksToBounds = false
        let path = CGMutablePath()
        
        let newSize = AVMakeRect(aspectRatio: selfShape.frame.size, insideRect: replicator.bounds)
//        let newSize = AVMakeRect(aspectRatio: selfShape.frame.size, insideRect: view.bounds)
        
        
        path.addPath(UIBezierPath(emotionShape: selfShape, in: newSize).cgPath)
        shapeLayer.path = path
        shapeLayer.frame = newSize
        
        
        
        replicator.replicatorLayer.addSublayer(shapeLayer)
        replicator.replicatorLayer.instanceCount = 30
        let newTransform = selfShape.transform
        replicator.replicatorLayer.instanceTransform = newTransform
        replicator.replicatorLayer.drawsAsynchronously = true
        
        let lineDashAnimation = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.lineDashPhase))
        lineDashAnimation.fromValue = 0
        lineDashAnimation.toValue = shapeLayer.lineDashPattern?.reduce(0) { $0 + $1.intValue + selfShape.lineDashAnimationOffset.intValue }
        lineDashAnimation.duration = 3
        lineDashAnimation.fillMode = .removed
        lineDashAnimation.speed = 1
        lineDashAnimation.repeatCount = Float.greatestFiniteMagnitude
        
        shapeLayer.add(lineDashAnimation, forKey: nil)
        
        
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


class SelfShapeView: UIView
{
    
    override var intrinsicContentSize: CGSize {
        return .init(width: 250, height: 250)
    }
   
    let emotionShape: SelfShape
    

    init(emotion: SelfShape) {
        self.emotionShape = emotion
        super.init(frame: .zero)

        self.layer.delegate = self

        setNeedsLayout()

    }

    init(emotion: SelfShape, frame: CGRect) {
        self.emotionShape = emotion
        super.init(frame: frame)
        
        
        
        setNeedsLayout()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var color:UIColor = .black {
        didSet { self.shapeLayer.fillColor = color.cgColor  }
    }

    var strokeColor:UIColor = .black {
        didSet { self.shapeLayer.strokeColor = strokeColor.cgColor  }
    }

    override static var layerClass:AnyClass {
        return CAShapeLayer.self
    }

    private var shapeLayer:CAShapeLayer {
        return self.layer as! CAShapeLayer
    }

    override func display(_ layer: CALayer) {
        super.display(layer)
        print(layer.frame)
    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        print("a")
    }




    override func layoutSubviews() {
        super.layoutSubviews()
        self.shapeLayer.path = SelfShape.path(emotion: emotionShape, rect: self.bounds)
    }


}


class SelfShapeViewHome: UIView
{
   
    override var intrinsicContentSize: CGSize {
        return .init(width: 250, height: 250)
    }
    
    let emotionShape: SelfShape
//    let kindOfSuperview: KindOfSuperview

    init(emotion: SelfShape) {
        self.emotionShape = emotion
        super.init(frame: .zero)

        self.layer.delegate = self

        setNeedsLayout()

    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var color:UIColor = .black {
        didSet { self.shapeLayer.fillColor = color.cgColor  }
    }

    var strokeColor:UIColor = .black {
        didSet { self.shapeLayer.strokeColor = strokeColor.cgColor  }
    }

    override static var layerClass:AnyClass {
        return CAShapeLayer.self
    }

    private var shapeLayer:CAShapeLayer {
        return self.layer as! CAShapeLayer
    }

    override func display(_ layer: CALayer) {
        super.display(layer)
        print(layer.frame)
    }

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        print("a")
    }




    override func layoutSubviews() {
        super.layoutSubviews()
        self.shapeLayer.path = SelfShape.path(emotion: emotionShape, rect: self.bounds)
    }


}


#Preview {
//    let testing = test(shape: .bravery, weight: .light, isAsyncRendered: true)
    let test = SelfShapeHomeView(selfShape: .bravery, weight: .light)
    test.backgroundColor = .blue
//    test.posit
    return test
//    ShapeDemoRepresentable(shape: .euphoria, weight: .light, isAsyncRendered: true)
    
//    let vi = SelfShapeViewHome(emotion: .bravery)
//    vi.translatesAutoresizingMaskIntoConstraints = false
//    vi.frame = .init(x: 0, y: 0, width: 200, height: 200)
//    return vi
//    

}
