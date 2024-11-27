//
//  bravery.swift
//  EmotionAssets
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


import UIKit

class BraveryAttributes: EmotionShapeAttributes {
    
    var ogFrame: CGRect
    
    var ogLineDashSpacing: NSNumber
    
    var ogLineWidth: CGFloat
    
    var frame: CGRect
    
    var lineDashSpacing: NSNumber
    
    var lineWidth: CGFloat
    
    var lineDashAnimationOffset: NSNumber
    
    var transform: CATransform3D
    
    
    
    static func getPath(in rect: CGRect, for emotionWeight: EmotionType) -> CGPath {
        var path = CGMutablePath()
        let width = rect.size.width
        let height = rect.size.height
        
        
        switch emotionWeight {
        case .Light:
            
            path.move(to: CGPoint(x: 0.33466*width, y: 0.98807*height))
            path.addCurve(to: CGPoint(x: 0.00002*width, y: 0.69616*height), control1: CGPoint(x: 0.29873*width, y: 1.00502*height), control2: CGPoint(x: -0.00292*width, y: 0.8666*height))
            path.addCurve(to: CGPoint(x: 0.04384*width, y: 0.56869*height), control1: CGPoint(x: 0.00041*width, y: 0.67352*height), control2: CGPoint(x: 0.00664*width, y: 0.62321*height))
            path.addCurve(to: CGPoint(x: 0.17729*width, y: 0.42209*height), control1: CGPoint(x: 0.08887*width, y: 0.5027*height), control2: CGPoint(x: 0.13774*width, y: 0.49141*height))
            path.addCurve(to: CGPoint(x: 0.21912*width, y: 0.31629*height), control1: CGPoint(x: 0.21272*width, y: 0.36001*height), control2: CGPoint(x: 0.20335*width, y: 0.31676*height))
            path.addCurve(to: CGPoint(x: 0.26095*width, y: 0.42592*height), control1: CGPoint(x: 0.23691*width, y: 0.31576*height), control2: CGPoint(x: 0.26591*width, y: 0.37038*height))
            path.addCurve(to: CGPoint(x: 0.24501*width, y: 0.49221*height), control1: CGPoint(x: 0.25725*width, y: 0.46716*height), control2: CGPoint(x: 0.23661*width, y: 0.48931*height))
            path.addCurve(to: CGPoint(x: 0.38842*width, y: 0.35963*height), control1: CGPoint(x: 0.2597*width, y: 0.49727*height), control2: CGPoint(x: 0.35234*width, y: 0.4397*height))
            path.addCurve(to: CGPoint(x: 0.3944*width, y: 0.1646*height), control1: CGPoint(x: 0.42722*width, y: 0.27358*height), control2: CGPoint(x: 0.3629*width, y: 0.24533*height))
            path.addCurve(to: CGPoint(x: 0.61551*width, y: 0.00143*height), control1: CGPoint(x: 0.43365*width, y: 0.06404*height), control2: CGPoint(x: 0.58*width, y: -0.01143*height))
            path.addCurve(to: CGPoint(x: 0.59361*width, y: 0.11743*height), control1: CGPoint(x: 0.63959*width, y: 0.01015*height), control2: CGPoint(x: 0.59764*width, y: 0.05401*height))
            path.addCurve(to: CGPoint(x: 0.97206*width, y: 0.59163*height), control1: CGPoint(x: 0.58202*width, y: 0.29946*height), control2: CGPoint(x: 0.90099*width, y: 0.35617*height))
            path.addCurve(to: CGPoint(x: 0.95414*width, y: 0.77136*height), control1: CGPoint(x: 0.99847*width, y: 0.67908*height), control2: CGPoint(x: 0.97457*width, y: 0.73785*height))
            path.addCurve(to: CGPoint(x: 0.7669*width, y: 0.90521*height), control1: CGPoint(x: 0.90305*width, y: 0.85514*height), control2: CGPoint(x: 0.79188*width, y: 0.91507*height))
            path.addCurve(to: CGPoint(x: 0.81072*width, y: 0.74205*height), control1: CGPoint(x: 0.74188*width, y: 0.89533*height), control2: CGPoint(x: 0.83827*width, y: 0.82931*height))
            path.addCurve(to: CGPoint(x: 0.6434*width, y: 0.54574*height), control1: CGPoint(x: 0.78312*width, y: 0.65461*height), control2: CGPoint(x: 0.66108*width, y: 0.64096*height))
            path.addCurve(to: CGPoint(x: 0.64937*width, y: 0.44887*height), control1: CGPoint(x: 0.63374*width, y: 0.49368*height), control2: CGPoint(x: 0.66158*width, y: 0.4512*height))
            path.addCurve(to: CGPoint(x: 0.58164*width, y: 0.53045*height), control1: CGPoint(x: 0.6373*width, y: 0.44655*height), control2: CGPoint(x: 0.59559*width, y: 0.48542*height))
            path.addCurve(to: CGPoint(x: 0.66729*width, y: 0.77647*height), control1: CGPoint(x: 0.5495*width, y: 0.63432*height), control2: CGPoint(x: 0.69291*width, y: 0.6813*height))
            path.addCurve(to: CGPoint(x: 0.52985*width, y: 0.89757*height), control1: CGPoint(x: 0.6469*width, y: 0.85228*height), control2: CGPoint(x: 0.53857*width, y: 0.90122*height))
            path.addCurve(to: CGPoint(x: 0.57766*width, y: 0.79432*height), control1: CGPoint(x: 0.52307*width, y: 0.89473*height), control2: CGPoint(x: 0.56937*width, y: 0.85687*height))
            path.addCurve(to: CGPoint(x: 0.56371*width, y: 0.72421*height), control1: CGPoint(x: 0.58085*width, y: 0.77026*height), control2: CGPoint(x: 0.58338*width, y: 0.7476*height))
            path.addCurve(to: CGPoint(x: 0.43623*width, y: 0.67322*height), control1: CGPoint(x: 0.53953*width, y: 0.69544*height), control2: CGPoint(x: 0.48796*width, y: 0.67305*height))
            path.addCurve(to: CGPoint(x: 0.2729*width, y: 0.77393*height), control1: CGPoint(x: 0.35566*width, y: 0.67348*height), control2: CGPoint(x: 0.29481*width, y: 0.73097*height))
            path.addCurve(to: CGPoint(x: 0.33465*width, y: 0.98808*height), control1: CGPoint(x: 0.21885*width, y: 0.87989*height), control2: CGPoint(x: 0.36201*width, y: 0.97517*height))
            path.addLine(to: CGPoint(x: 0.33466*width, y: 0.98807*height))
            path.closeSubpath()
            
            
        case .Dark:
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
        }
        
        
        
        return path
    }
    
    
    
    
}
