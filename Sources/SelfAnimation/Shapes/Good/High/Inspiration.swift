//
//  Inspiration.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//
import SwiftUI
import UIKit

extension SelfShape {
    static func inspirationTransform() -> CATransform3D {
        
        
        var newTransform = CATransform3DIdentity
        
        newTransform = CATransform3DScale(
            newTransform,
            0.91, 0.91, 0
            
        )
        
        
        newTransform = CATransform3DTranslate(
            newTransform,
            0, 0, 0
        )
        
        
        
        newTransform = CATransform3DRotate(newTransform, Angle(degrees: -7).radians,
                                          0, 0, 1
        )
        
        
        return newTransform
    }
    
    static func inspirationPath(rect: CGRect) -> CGPath {
        let path = CGMutablePath()
        
        let width = rect.size.width
        let height = rect.size.height
        
        
        path.move(to: CGPoint(x: 0.4884*width, y: 0.00028*height))
         path.addCurve(to: CGPoint(x: 0.03735*width, y: 0.20253*height), control1: CGPoint(x: 0.21563*width, y: -0.00625*height), control2: CGPoint(x: 0.01972*width, y: 0.10273*height))
         path.addCurve(to: CGPoint(x: 0.36539*width, y: 0.35966*height), control1: CGPoint(x: 0.05131*width, y: 0.28157*height), control2: CGPoint(x: 0.19873*width, y: 0.35234*height))
         path.addCurve(to: CGPoint(x: 0.7213*width, y: 0.25101*height), control1: CGPoint(x: 0.51222*width, y: 0.3661*height), control2: CGPoint(x: 0.70202*width, y: 0.32452*height))
         path.addCurve(to: CGPoint(x: 0.5376*width, y: 0.11896*height), control1: CGPoint(x: 0.73613*width, y: 0.19448*height), control2: CGPoint(x: 0.64958*width, y: 0.12123*height))
         path.addCurve(to: CGPoint(x: 0.33258*width, y: 0.23764*height), control1: CGPoint(x: 0.42698*width, y: 0.11672*height), control2: CGPoint(x: 0.32645*width, y: 0.1845*height))
         path.addCurve(to: CGPoint(x: 0.6803*width, y: 0.40144*height), control1: CGPoint(x: 0.33888*width, y: 0.29219*height), control2: CGPoint(x: 0.45747*width, y: 0.33013*height))
         path.addCurve(to: CGPoint(x: 0.96077*width, y: 0.49839*height), control1: CGPoint(x: 0.86558*width, y: 0.46074*height), control2: CGPoint(x: 0.91272*width, y: 0.46013*height))
         path.addCurve(to: CGPoint(x: 0.91977*width, y: 0.72488*height), control1: CGPoint(x: 1.04595*width, y: 0.56622*height), control2: CGPoint(x: 1.04481*width, y: 0.68521*height))
         path.addCurve(to: CGPoint(x: 0.48184*width, y: 0.61707*height), control1: CGPoint(x: 0.76211*width, y: 0.7749*height), control2: CGPoint(x: 0.47647*width, y: 0.67695*height))
         path.addCurve(to: CGPoint(x: 0.62617*width, y: 0.51929*height), control1: CGPoint(x: 0.48551*width, y: 0.57609*height), control2: CGPoint(x: 0.62434*width, y: 0.56575*height))
         path.addCurve(to: CGPoint(x: 0.42771*width, y: 0.43571*height), control1: CGPoint(x: 0.62795*width, y: 0.47451*height), control2: CGPoint(x: 0.5015*width, y: 0.42099*height))
         path.addCurve(to: CGPoint(x: 0.38671*width, y: 0.56108*height), control1: CGPoint(x: 0.35881*width, y: 0.44946*height), control2: CGPoint(x: 0.33362*width, y: 0.52313*height))
         path.addCurve(to: CGPoint(x: 0.65242*width, y: 0.60621*height), control1: CGPoint(x: 0.44774*width, y: 0.60469*height), control2: CGPoint(x: 0.57759*width, y: 0.57633*height))
         path.addCurve(to: CGPoint(x: 0.5294*width, y: 1.01071*height), control1: CGPoint(x: 0.73676*width, y: 0.63988*height), control2: CGPoint(x: 0.74404*width, y: 0.7447*height))
         return path
    }
}


#Preview(body: {
    VStack {
        
        
        //        MyIconsdasa()
        ShapeHomeRepresentable(shape: .inspiration, weight: .light)
        ShapeHomeRepresentable(shape: .inspiration, weight: .dark)
    }
    
})

