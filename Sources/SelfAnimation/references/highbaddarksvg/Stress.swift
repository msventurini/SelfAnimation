//
//  stress.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import SwiftUI

struct Stress: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47448*width, y: 0.66829*height))
        path.addCurve(to: CGPoint(x: 0.52891*width, y: 0.68314*height), control1: CGPoint(x: 0.50926*width, y: 0.68231*height), control2: CGPoint(x: 0.5274*width, y: 0.68726*height))
        path.addCurve(to: CGPoint(x: 0.51956*width, y: 0.6709*height), control1: CGPoint(x: 0.52964*width, y: 0.68116*height), control2: CGPoint(x: 0.52652*width, y: 0.67708*height))
        path.addCurve(to: CGPoint(x: 0.4955*width, y: 0.65393*height), control1: CGPoint(x: 0.51154*width, y: 0.66524*height), control2: CGPoint(x: 0.50352*width, y: 0.65958*height))
        path.addCurve(to: CGPoint(x: 0.48587*width, y: 0.64457*height), control1: CGPoint(x: 0.48863*width, y: 0.64936*height), control2: CGPoint(x: 0.48542*width, y: 0.64623*height))
        path.addCurve(to: CGPoint(x: 0.54355*width, y: 0.65502*height), control1: CGPoint(x: 0.48686*width, y: 0.64083*height), control2: CGPoint(x: 0.50609*width, y: 0.64431*height))
        path.addCurve(to: CGPoint(x: 0.47448*width, y: 0.66829*height), control1: CGPoint(x: 0.52052*width, y: 0.65944*height), control2: CGPoint(x: 0.4975*width, y: 0.66387*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4697*width, y: 0.66525*height))
        path.addCurve(to: CGPoint(x: 0.52812*width, y: 0.68787*height), control1: CGPoint(x: 0.50667*width, y: 0.68467*height), control2: CGPoint(x: 0.52614*width, y: 0.69222*height))
        path.addCurve(to: CGPoint(x: 0.51884*width, y: 0.67339*height), control1: CGPoint(x: 0.52907*width, y: 0.68579*height), control2: CGPoint(x: 0.52598*width, y: 0.68096*height))
        path.addCurve(to: CGPoint(x: 0.49383*width, y: 0.65199*height), control1: CGPoint(x: 0.51051*width, y: 0.66625*height), control2: CGPoint(x: 0.50216*width, y: 0.65912*height))
        path.addCurve(to: CGPoint(x: 0.48401*width, y: 0.64061*height), control1: CGPoint(x: 0.48668*width, y: 0.64619*height), control2: CGPoint(x: 0.4834*width, y: 0.6424*height))
        path.addCurve(to: CGPoint(x: 0.54634*width, y: 0.6588*height), control1: CGPoint(x: 0.4854*width, y: 0.63664*height), control2: CGPoint(x: 0.50617*width, y: 0.6427*height))
        path.addCurve(to: CGPoint(x: 0.4697*width, y: 0.66524*height), control1: CGPoint(x: 0.52079*width, y: 0.66094*height), control2: CGPoint(x: 0.49525*width, y: 0.66309*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4647*width, y: 0.66137*height))
        path.addCurve(to: CGPoint(x: 0.52688*width, y: 0.69297*height), control1: CGPoint(x: 0.50365*width, y: 0.68695*height), control2: CGPoint(x: 0.52437*width, y: 0.69749*height))
        path.addCurve(to: CGPoint(x: 0.51785*width, y: 0.67602*height), control1: CGPoint(x: 0.52808*width, y: 0.6908*height), control2: CGPoint(x: 0.52507*width, y: 0.68515*height))
        path.addCurve(to: CGPoint(x: 0.49215*width, y: 0.64967*height), control1: CGPoint(x: 0.50929*width, y: 0.66723*height), control2: CGPoint(x: 0.50072*width, y: 0.65846*height))
        path.addCurve(to: CGPoint(x: 0.4823*width, y: 0.63607*height), control1: CGPoint(x: 0.48477*width, y: 0.64249*height), control2: CGPoint(x: 0.48149*width, y: 0.63794*height))
        path.addCurve(to: CGPoint(x: 0.54911*width, y: 0.66328*height), control1: CGPoint(x: 0.48413*width, y: 0.63188*height), control2: CGPoint(x: 0.50639*width, y: 0.64096*height))
        path.addCurve(to: CGPoint(x: 0.4647*width, y: 0.66138*height), control1: CGPoint(x: 0.52097*width, y: 0.66265*height), control2: CGPoint(x: 0.49284*width, y: 0.66201*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45952*width, y: 0.65654*height))
        path.addCurve(to: CGPoint(x: 0.52512*width, y: 0.6984*height), control1: CGPoint(x: 0.50016*width, y: 0.6891*height), control2: CGPoint(x: 0.52203*width, y: 0.70306*height))
        path.addCurve(to: CGPoint(x: 0.51657*width, y: 0.6788*height), control1: CGPoint(x: 0.5266*width, y: 0.69616*height), control2: CGPoint(x: 0.52376*width, y: 0.68963*height))
        path.addCurve(to: CGPoint(x: 0.4905*width, y: 0.64695*height), control1: CGPoint(x: 0.50787*width, y: 0.66818*height), control2: CGPoint(x: 0.49918*width, y: 0.65756*height))
        path.addCurve(to: CGPoint(x: 0.48078*width, y: 0.63091*height), control1: CGPoint(x: 0.48298*width, y: 0.63821*height), control2: CGPoint(x: 0.47974*width, y: 0.63287*height))
        path.addCurve(to: CGPoint(x: 0.55179*width, y: 0.66852*height), control1: CGPoint(x: 0.4831*width, y: 0.62654*height), control2: CGPoint(x: 0.50677*width, y: 0.63907*height))
        path.addCurve(to: CGPoint(x: 0.45953*width, y: 0.65655*height), control1: CGPoint(x: 0.52103*width, y: 0.66452*height), control2: CGPoint(x: 0.49029*width, y: 0.66054*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45424*width, y: 0.65063*height))
        path.addCurve(to: CGPoint(x: 0.52276*width, y: 0.70414*height), control1: CGPoint(x: 0.49617*width, y: 0.69103*height), control2: CGPoint(x: 0.51901*width, y: 0.70886*height))
        path.addCurve(to: CGPoint(x: 0.51494*width, y: 0.68168*height), control1: CGPoint(x: 0.52457*width, y: 0.70187*height), control2: CGPoint(x: 0.52195*width, y: 0.69438*height))
        path.addCurve(to: CGPoint(x: 0.4889*width, y: 0.64376*height), control1: CGPoint(x: 0.50625*width, y: 0.66903*height), control2: CGPoint(x: 0.49757*width, y: 0.6564*height))
        path.addCurve(to: CGPoint(x: 0.47952*width, y: 0.62505*height), control1: CGPoint(x: 0.48135*width, y: 0.63331*height), control2: CGPoint(x: 0.47822*width, y: 0.62708*height))
        path.addCurve(to: CGPoint(x: 0.5543*width, y: 0.67452*height), control1: CGPoint(x: 0.4824*width, y: 0.62053*height), control2: CGPoint(x: 0.50733*width, y: 0.63702*height))
        path.addCurve(to: CGPoint(x: 0.45424*width, y: 0.65063*height), control1: CGPoint(x: 0.52095*width, y: 0.66656*height), control2: CGPoint(x: 0.4876*width, y: 0.65859*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.44891*width, y: 0.64355*height))
        path.addCurve(to: CGPoint(x: 0.51973*width, y: 0.71015*height), control1: CGPoint(x: 0.49165*width, y: 0.69269*height), control2: CGPoint(x: 0.51526*width, y: 0.71489*height))
        path.addCurve(to: CGPoint(x: 0.51293*width, y: 0.68463*height), control1: CGPoint(x: 0.52189*width, y: 0.70786*height), control2: CGPoint(x: 0.51961*width, y: 0.69936*height))
        path.addCurve(to: CGPoint(x: 0.48739*width, y: 0.64008*height), control1: CGPoint(x: 0.50442*width, y: 0.66979*height), control2: CGPoint(x: 0.4959*width, y: 0.65493*height))
        path.addCurve(to: CGPoint(x: 0.47859*width, y: 0.6185*height), control1: CGPoint(x: 0.47995*width, y: 0.62776*height), control2: CGPoint(x: 0.47702*width, y: 0.62057*height))
        path.addCurve(to: CGPoint(x: 0.55657*width, y: 0.68141*height), control1: CGPoint(x: 0.48211*width, y: 0.61389*height), control2: CGPoint(x: 0.50809*width, y: 0.63486*height))
        path.addCurve(to: CGPoint(x: 0.44891*width, y: 0.64354*height), control1: CGPoint(x: 0.52069*width, y: 0.66879*height), control2: CGPoint(x: 0.4848*width, y: 0.65616*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.44365*width, y: 0.63519*height))
        path.addCurve(to: CGPoint(x: 0.51596*width, y: 0.71637*height), control1: CGPoint(x: 0.48658*width, y: 0.69397*height), control2: CGPoint(x: 0.51068*width, y: 0.72103*height))
        path.addCurve(to: CGPoint(x: 0.51051*width, y: 0.68764*height), control1: CGPoint(x: 0.51849*width, y: 0.71412*height), control2: CGPoint(x: 0.51668*width, y: 0.70454*height))
        path.addCurve(to: CGPoint(x: 0.48604*width, y: 0.63587*height), control1: CGPoint(x: 0.50235*width, y: 0.67038*height), control2: CGPoint(x: 0.4942*width, y: 0.65313*height))
        path.addCurve(to: CGPoint(x: 0.47809*width, y: 0.61123*height), control1: CGPoint(x: 0.47886*width, y: 0.62152*height), control2: CGPoint(x: 0.47622*width, y: 0.61331*height))
        path.addCurve(to: CGPoint(x: 0.55853*width, y: 0.68921*height), control1: CGPoint(x: 0.4823*width, y: 0.60659*height), control2: CGPoint(x: 0.50912*width, y: 0.63259*height))
        path.addCurve(to: CGPoint(x: 0.44364*width, y: 0.63517*height), control1: CGPoint(x: 0.52023*width, y: 0.6712*height), control2: CGPoint(x: 0.48193*width, y: 0.65318*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43854*width, y: 0.62541*height))
        path.addCurve(to: CGPoint(x: 0.51133*width, y: 0.72274*height), control1: CGPoint(x: 0.48093*width, y: 0.69479*height), control2: CGPoint(x: 0.50519*width, y: 0.72723*height))
        path.addCurve(to: CGPoint(x: 0.50762*width, y: 0.69066*height), control1: CGPoint(x: 0.51427*width, y: 0.72058*height), control2: CGPoint(x: 0.51304*width, y: 0.70989*height))
        path.addCurve(to: CGPoint(x: 0.48489*width, y: 0.63114*height), control1: CGPoint(x: 0.50004*width, y: 0.67082*height), control2: CGPoint(x: 0.49247*width, y: 0.65098*height))
        path.addCurve(to: CGPoint(x: 0.47813*width, y: 0.60323*height), control1: CGPoint(x: 0.47816*width, y: 0.61458*height), control2: CGPoint(x: 0.4759*width, y: 0.60528*height))
        path.addCurve(to: CGPoint(x: 0.56007*width, y: 0.69801*height), control1: CGPoint(x: 0.4831*width, y: 0.59865*height), control2: CGPoint(x: 0.51041*width, y: 0.63025*height))
        path.addCurve(to: CGPoint(x: 0.43854*width, y: 0.62541*height), control1: CGPoint(x: 0.51956*width, y: 0.67381*height), control2: CGPoint(x: 0.47905*width, y: 0.64961*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43371*width, y: 0.61411*height))
        path.addCurve(to: CGPoint(x: 0.50576*width, y: 0.72918*height), control1: CGPoint(x: 0.47468*width, y: 0.69502*height), control2: CGPoint(x: 0.49869*width, y: 0.73337*height))
        path.addCurve(to: CGPoint(x: 0.50422*width, y: 0.69362*height), control1: CGPoint(x: 0.50916*width, y: 0.72715*height), control2: CGPoint(x: 0.50865*width, y: 0.71531*height))
        path.addCurve(to: CGPoint(x: 0.48401*width, y: 0.62579*height), control1: CGPoint(x: 0.49748*width, y: 0.67101*height), control2: CGPoint(x: 0.49075*width, y: 0.6484*height))
        path.addCurve(to: CGPoint(x: 0.47879*width, y: 0.59445*height), control1: CGPoint(x: 0.47793*width, y: 0.60688*height), control2: CGPoint(x: 0.4762*width, y: 0.59643*height))
        path.addCurve(to: CGPoint(x: 0.56106*width, y: 0.70781*height), control1: CGPoint(x: 0.48459*width, y: 0.59002*height), control2: CGPoint(x: 0.51202*width, y: 0.62781*height))
        path.addCurve(to: CGPoint(x: 0.4337*width, y: 0.61411*height), control1: CGPoint(x: 0.51861*width, y: 0.67657*height), control2: CGPoint(x: 0.47616*width, y: 0.64534*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42931*width, y: 0.60116*height))
        path.addCurve(to: CGPoint(x: 0.49917*width, y: 0.73556*height), control1: CGPoint(x: 0.46781*width, y: 0.69453*height), control2: CGPoint(x: 0.4911*width, y: 0.73933*height))
        path.addCurve(to: CGPoint(x: 0.50027*width, y: 0.69645*height), control1: CGPoint(x: 0.50305*width, y: 0.73375*height), control2: CGPoint(x: 0.50342*width, y: 0.72071*height))
        path.addCurve(to: CGPoint(x: 0.48346*width, y: 0.61983*height), control1: CGPoint(x: 0.49467*width, y: 0.67091*height), control2: CGPoint(x: 0.48906*width, y: 0.64537*height))
        path.addCurve(to: CGPoint(x: 0.48021*width, y: 0.58492*height), control1: CGPoint(x: 0.4783*width, y: 0.59843*height), control2: CGPoint(x: 0.47721*width, y: 0.58678*height))
        path.addCurve(to: CGPoint(x: 0.56139*width, y: 0.71863*height), control1: CGPoint(x: 0.48691*width, y: 0.58074*height), control2: CGPoint(x: 0.51397*width, y: 0.62531*height))
        path.addCurve(to: CGPoint(x: 0.42932*width, y: 0.60116*height), control1: CGPoint(x: 0.51737*width, y: 0.67947*height), control2: CGPoint(x: 0.47334*width, y: 0.64031*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42551*width, y: 0.58648*height))
        path.addCurve(to: CGPoint(x: 0.49145*width, y: 0.74178*height), control1: CGPoint(x: 0.46033*width, y: 0.69319*height), control2: CGPoint(x: 0.48231*width, y: 0.74497*height))
        path.addCurve(to: CGPoint(x: 0.49571*width, y: 0.6991*height), control1: CGPoint(x: 0.49584*width, y: 0.74025*height), control2: CGPoint(x: 0.49726*width, y: 0.72602*height))
        path.addCurve(to: CGPoint(x: 0.48331*width, y: 0.61326*height), control1: CGPoint(x: 0.49157*width, y: 0.67048*height), control2: CGPoint(x: 0.48745*width, y: 0.64188*height))
        path.addCurve(to: CGPoint(x: 0.4825*width, y: 0.57466*height), control1: CGPoint(x: 0.47934*width, y: 0.58922*height), control2: CGPoint(x: 0.47906*width, y: 0.57634*height))
        path.addCurve(to: CGPoint(x: 0.56087*width, y: 0.73053*height), control1: CGPoint(x: 0.49016*width, y: 0.57087*height), control2: CGPoint(x: 0.51628*width, y: 0.62282*height))
        path.addCurve(to: CGPoint(x: 0.42551*width, y: 0.58648*height), control1: CGPoint(x: 0.51576*width, y: 0.68251*height), control2: CGPoint(x: 0.47063*width, y: 0.6345*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4225*width, y: 0.56997*height))
        path.addCurve(to: CGPoint(x: 0.4825*width, y: 0.74769*height), control1: CGPoint(x: 0.45226*width, y: 0.69087*height), control2: CGPoint(x: 0.47226*width, y: 0.75011*height))
        path.addCurve(to: CGPoint(x: 0.49052*width, y: 0.70146*height), control1: CGPoint(x: 0.48743*width, y: 0.74654*height), control2: CGPoint(x: 0.4901*width, y: 0.73112*height))
        path.addCurve(to: CGPoint(x: 0.48368*width, y: 0.60605*height), control1: CGPoint(x: 0.48824*width, y: 0.66966*height), control2: CGPoint(x: 0.48596*width, y: 0.63785*height))
        path.addCurve(to: CGPoint(x: 0.48581*width, y: 0.56369*height), control1: CGPoint(x: 0.48122*width, y: 0.57927*height), control2: CGPoint(x: 0.48192*width, y: 0.56514*height))
        path.addCurve(to: CGPoint(x: 0.55939*width, y: 0.7435*height), control1: CGPoint(x: 0.49449*width, y: 0.56044*height), control2: CGPoint(x: 0.51901*width, y: 0.62037*height))
        path.addCurve(to: CGPoint(x: 0.4225*width, y: 0.56997*height), control1: CGPoint(x: 0.51376*width, y: 0.68566*height), control2: CGPoint(x: 0.46813*width, y: 0.62781*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42049*width, y: 0.55153*height))
        path.addCurve(to: CGPoint(x: 0.47225*width, y: 0.75312*height), control1: CGPoint(x: 0.44359*width, y: 0.68737*height), control2: CGPoint(x: 0.46084*width, y: 0.75457*height))
        path.addCurve(to: CGPoint(x: 0.48464*width, y: 0.70344*height), control1: CGPoint(x: 0.47773*width, y: 0.75242*height), control2: CGPoint(x: 0.48186*width, y: 0.73586*height))
        path.addLine(to: CGPoint(x: 0.48464*width, y: 0.59819*height))
        path.addCurve(to: CGPoint(x: 0.49029*width, y: 0.55207*height), control1: CGPoint(x: 0.48404*width, y: 0.56858*height), control2: CGPoint(x: 0.48592*width, y: 0.55321*height))
        path.addCurve(to: CGPoint(x: 0.55674*width, y: 0.75753*height), control1: CGPoint(x: 0.50004*width, y: 0.54953*height), control2: CGPoint(x: 0.52219*width, y: 0.61801*height))
        path.addCurve(to: CGPoint(x: 0.42048*width, y: 0.55154*height), control1: CGPoint(x: 0.51132*width, y: 0.68886*height), control2: CGPoint(x: 0.4659*width, y: 0.6202*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.41974*width, y: 0.53111*height))
        path.addCurve(to: CGPoint(x: 0.4606*width, y: 0.75785*height), control1: CGPoint(x: 0.43438*width, y: 0.68252*height), control2: CGPoint(x: 0.448*width, y: 0.7581*height))
        path.addCurve(to: CGPoint(x: 0.47806*width, y: 0.70493*height), control1: CGPoint(x: 0.46666*width, y: 0.75773*height), control2: CGPoint(x: 0.47248*width, y: 0.74009*height))
        path.addLine(to: CGPoint(x: 0.48631*width, y: 0.58971*height))
        path.addCurve(to: CGPoint(x: 0.4961*width, y: 0.53988*height), control1: CGPoint(x: 0.48797*width, y: 0.55722*height), control2: CGPoint(x: 0.49123*width, y: 0.54061*height))
        path.addCurve(to: CGPoint(x: 0.55274*width, y: 0.77256*height), control1: CGPoint(x: 0.50698*width, y: 0.53823*height), control2: CGPoint(x: 0.52587*width, y: 0.61579*height))
        path.addCurve(to: CGPoint(x: 0.41973*width, y: 0.53112*height), control1: CGPoint(x: 0.50841*width, y: 0.69208*height), control2: CGPoint(x: 0.46407*width, y: 0.61161*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42052*width, y: 0.50868*height))
        path.addCurve(to: CGPoint(x: 0.44748*width, y: 0.76168*height), control1: CGPoint(x: 0.42468*width, y: 0.67614*height), control2: CGPoint(x: 0.43366*width, y: 0.76047*height))
        path.addCurve(to: CGPoint(x: 0.47075*width, y: 0.70578*height), control1: CGPoint(x: 0.45412*width, y: 0.76225*height), control2: CGPoint(x: 0.46187*width, y: 0.74362*height))
        path.addCurve(to: CGPoint(x: 0.48881*width, y: 0.58061*height), control1: CGPoint(x: 0.47677*width, y: 0.66406*height), control2: CGPoint(x: 0.48279*width, y: 0.62234*height))
        path.addCurve(to: CGPoint(x: 0.50344*width, y: 0.5272*height), control1: CGPoint(x: 0.49318*width, y: 0.54524*height), control2: CGPoint(x: 0.49806*width, y: 0.52744*height))
        path.addCurve(to: CGPoint(x: 0.54721*width, y: 0.78855*height), control1: CGPoint(x: 0.51548*width, y: 0.52668*height), control2: CGPoint(x: 0.53007*width, y: 0.61379*height))
        path.addCurve(to: CGPoint(x: 0.42052*width, y: 0.50867*height), control1: CGPoint(x: 0.50498*width, y: 0.69525*height), control2: CGPoint(x: 0.46275*width, y: 0.60197*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42314*width, y: 0.48422*height))
        path.addCurve(to: CGPoint(x: 0.43281*width, y: 0.76432*height), control1: CGPoint(x: 0.41456*width, y: 0.66802*height), control2: CGPoint(x: 0.41778*width, y: 0.76139*height))
        path.addCurve(to: CGPoint(x: 0.46266*width, y: 0.70585*height), control1: CGPoint(x: 0.44003*width, y: 0.76573*height), control2: CGPoint(x: 0.44998*width, y: 0.74624*height))
        path.addCurve(to: CGPoint(x: 0.49226*width, y: 0.57093*height), control1: CGPoint(x: 0.47252*width, y: 0.66088*height), control2: CGPoint(x: 0.48238*width, y: 0.61591*height))
        path.addCurve(to: CGPoint(x: 0.51247*width, y: 0.51418*height), control1: CGPoint(x: 0.49981*width, y: 0.53272*height), control2: CGPoint(x: 0.50655*width, y: 0.5138*height))
        path.addCurve(to: CGPoint(x: 0.53989*width, y: 0.80541*height), control1: CGPoint(x: 0.52569*width, y: 0.51502*height), control2: CGPoint(x: 0.53483*width, y: 0.61209*height))
        path.addCurve(to: CGPoint(x: 0.42315*width, y: 0.48421*height), control1: CGPoint(x: 0.50098*width, y: 0.69835*height), control2: CGPoint(x: 0.46206*width, y: 0.59127*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.42792*width, y: 0.45774*height))
        path.addCurve(to: CGPoint(x: 0.41655*width, y: 0.76551*height), control1: CGPoint(x: 0.40412*width, y: 0.65795*height), control2: CGPoint(x: 0.40032*width, y: 0.76054*height))
        path.addCurve(to: CGPoint(x: 0.45381*width, y: 0.70501*height), control1: CGPoint(x: 0.42435*width, y: 0.7679*height), control2: CGPoint(x: 0.43677*width, y: 0.74773*height))
        path.addCurve(to: CGPoint(x: 0.49679*width, y: 0.56078*height), control1: CGPoint(x: 0.46814*width, y: 0.65693*height), control2: CGPoint(x: 0.48246*width, y: 0.60885*height))
        path.addCurve(to: CGPoint(x: 0.52336*width, y: 0.50101*height), control1: CGPoint(x: 0.50805*width, y: 0.51983*height), control2: CGPoint(x: 0.51691*width, y: 0.49991*height))
        path.addCurve(to: CGPoint(x: 0.53054*width, y: 0.82304*height), control1: CGPoint(x: 0.53776*width, y: 0.50348*height), control2: CGPoint(x: 0.54017*width, y: 0.61081*height))
        path.addCurve(to: CGPoint(x: 0.42793*width, y: 0.45775*height), control1: CGPoint(x: 0.49634*width, y: 0.70127*height), control2: CGPoint(x: 0.46214*width, y: 0.57952*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.43523*width, y: 0.4293*height))
        path.addCurve(to: CGPoint(x: 0.39865*width, y: 0.76489*height), control1: CGPoint(x: 0.39347*width, y: 0.64569*height), control2: CGPoint(x: 0.38128*width, y: 0.75756*height))
        path.addCurve(to: CGPoint(x: 0.44418*width, y: 0.70301*height), control1: CGPoint(x: 0.407*width, y: 0.76841*height), control2: CGPoint(x: 0.42217*width, y: 0.74778*height))
        path.addCurve(to: CGPoint(x: 0.50253*width, y: 0.55016*height), control1: CGPoint(x: 0.46363*width, y: 0.65206*height), control2: CGPoint(x: 0.48308*width, y: 0.6011*height))
        path.addCurve(to: CGPoint(x: 0.53631*width, y: 0.48784*height), control1: CGPoint(x: 0.51808*width, y: 0.50666*height), control2: CGPoint(x: 0.52934*width, y: 0.48588*height))
        path.addCurve(to: CGPoint(x: 0.51892*width, y: 0.8412*height), control1: CGPoint(x: 0.55189*width, y: 0.49222*height), control2: CGPoint(x: 0.5461*width, y: 0.61*height))
        path.addCurve(to: CGPoint(x: 0.43522*width, y: 0.42931*height), control1: CGPoint(x: 0.49102*width, y: 0.7039*height), control2: CGPoint(x: 0.46312*width, y: 0.5666*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.44546*width, y: 0.39904*height))
        path.addCurve(to: CGPoint(x: 0.37911*width, y: 0.76214*height), control1: CGPoint(x: 0.38278*width, y: 0.63105*height), control2: CGPoint(x: 0.36066*width, y: 0.75208*height))
        path.addCurve(to: CGPoint(x: 0.4338*width, y: 0.69972*height), control1: CGPoint(x: 0.38797*width, y: 0.76697*height), control2: CGPoint(x: 0.40621*width, y: 0.74616*height))
        path.addCurve(to: CGPoint(x: 0.50967*width, y: 0.5392*height), control1: CGPoint(x: 0.45909*width, y: 0.64621*height), control2: CGPoint(x: 0.48437*width, y: 0.59271*height))
        path.addCurve(to: CGPoint(x: 0.55153*width, y: 0.47494*height), control1: CGPoint(x: 0.53009*width, y: 0.4934*height), control2: CGPoint(x: 0.54404*width, y: 0.47197*height))
        path.addCurve(to: CGPoint(x: 0.5048*width, y: 0.85974*height), control1: CGPoint(x: 0.56824*width, y: 0.48155*height), control2: CGPoint(x: 0.55266*width, y: 0.60982*height))
        path.addCurve(to: CGPoint(x: 0.44547*width, y: 0.39904*height), control1: CGPoint(x: 0.48502*width, y: 0.70618*height), control2: CGPoint(x: 0.46524*width, y: 0.55261*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.45903*width, y: 0.36711*height))
        path.addCurve(to: CGPoint(x: 0.35792*width, y: 0.75683*height), control1: CGPoint(x: 0.37223*width, y: 0.61376*height), control2: CGPoint(x: 0.33853*width, y: 0.74367*height))
        path.addCurve(to: CGPoint(x: 0.4227*width, y: 0.6949*height), control1: CGPoint(x: 0.36725*width, y: 0.76316*height), control2: CGPoint(x: 0.38883*width, y: 0.74251*height))
        path.addCurve(to: CGPoint(x: 0.51833*width, y: 0.52807*height), control1: CGPoint(x: 0.45458*width, y: 0.63929*height), control2: CGPoint(x: 0.48645*width, y: 0.58368*height))
        path.addCurve(to: CGPoint(x: 0.5692*width, y: 0.46261*height), control1: CGPoint(x: 0.54428*width, y: 0.48031*height), control2: CGPoint(x: 0.56124*width, y: 0.45849*height))
        path.addCurve(to: CGPoint(x: 0.48787*width, y: 0.87839*height), control1: CGPoint(x: 0.58697*width, y: 0.47181*height), control2: CGPoint(x: 0.55986*width, y: 0.61039*height))
        path.addCurve(to: CGPoint(x: 0.45904*width, y: 0.36711*height), control1: CGPoint(x: 0.47826*width, y: 0.70796*height), control2: CGPoint(x: 0.46866*width, y: 0.53754*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.4764*width, y: 0.33373*height))
        path.addCurve(to: CGPoint(x: 0.33516*width, y: 0.74854*height), control1: CGPoint(x: 0.36203*width, y: 0.59359*height), control2: CGPoint(x: 0.31495*width, y: 0.73186*height))
        path.addCurve(to: CGPoint(x: 0.41092*width, y: 0.68832*height), control1: CGPoint(x: 0.34487*width, y: 0.75656*height), control2: CGPoint(x: 0.37012*width, y: 0.73649*height))
        path.addCurve(to: CGPoint(x: 0.52869*width, y: 0.51687*height), control1: CGPoint(x: 0.45017*width, y: 0.63117*height), control2: CGPoint(x: 0.48944*width, y: 0.57402*height))
        path.addCurve(to: CGPoint(x: 0.5895*width, y: 0.45117*height), control1: CGPoint(x: 0.56085*width, y: 0.46763*height), control2: CGPoint(x: 0.58111*width, y: 0.44573*height))
        path.addCurve(to: CGPoint(x: 0.46787*width, y: 0.89682*height), control1: CGPoint(x: 0.60824*width, y: 0.46332*height), control2: CGPoint(x: 0.5677*width, y: 0.61187*height))
        path.addCurve(to: CGPoint(x: 0.4764*width, y: 0.33373*height), control1: CGPoint(x: 0.47072*width, y: 0.70912*height), control2: CGPoint(x: 0.47355*width, y: 0.52143*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.49803*width, y: 0.29924*height))
        path.addCurve(to: CGPoint(x: 0.31088*width, y: 0.73681*height), control1: CGPoint(x: 0.35246*width, y: 0.57031*height), control2: CGPoint(x: 0.29008*width, y: 0.71619*height))
        path.addCurve(to: CGPoint(x: 0.39855*width, y: 0.67975*height), control1: CGPoint(x: 0.32088*width, y: 0.74672*height), control2: CGPoint(x: 0.35011*width, y: 0.72771*height))
        path.addCurve(to: CGPoint(x: 0.54091*width, y: 0.50584*height), control1: CGPoint(x: 0.446*width, y: 0.62178*height), control2: CGPoint(x: 0.49346*width, y: 0.5638*height))
        path.addCurve(to: CGPoint(x: 0.61263*width, y: 0.44102*height), control1: CGPoint(x: 0.57997*width, y: 0.45569*height), control2: CGPoint(x: 0.60388*width, y: 0.43408*height))
        path.addCurve(to: CGPoint(x: 0.44454*width, y: 0.91466*height), control1: CGPoint(x: 0.63219*width, y: 0.45651*height), control2: CGPoint(x: 0.57616*width, y: 0.61439*height))
        path.addCurve(to: CGPoint(x: 0.49802*width, y: 0.29924*height), control1: CGPoint(x: 0.46237*width, y: 0.70952*height), control2: CGPoint(x: 0.48019*width, y: 0.50438*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.5244*width, y: 0.26399*height))
        path.addCurve(to: CGPoint(x: 0.28523*width, y: 0.72111*height), control1: CGPoint(x: 0.34379*width, y: 0.54372*height), control2: CGPoint(x: 0.26406*width, y: 0.6961*height))
        path.addCurve(to: CGPoint(x: 0.38567*width, y: 0.66891*height), control1: CGPoint(x: 0.29541*width, y: 0.73314*height), control2: CGPoint(x: 0.32889*width, y: 0.71574*height))
        path.addCurve(to: CGPoint(x: 0.55517*width, y: 0.49517*height), control1: CGPoint(x: 0.44217*width, y: 0.611*height), control2: CGPoint(x: 0.49866*width, y: 0.55308*height))
        path.addCurve(to: CGPoint(x: 0.63877*width, y: 0.43261*height), control1: CGPoint(x: 0.60186*width, y: 0.44485*height), control2: CGPoint(x: 0.62972*width, y: 0.42399*height))
        path.addCurve(to: CGPoint(x: 0.41762*width, y: 0.93144*height), control1: CGPoint(x: 0.65896*width, y: 0.45186*height), control2: CGPoint(x: 0.58525*width, y: 0.61813*height))
        path.addCurve(to: CGPoint(x: 0.52442*width, y: 0.26398*height), control1: CGPoint(x: 0.45322*width, y: 0.70895*height), control2: CGPoint(x: 0.48882*width, y: 0.48647*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.55604*width, y: 0.2285*height))
        path.addCurve(to: CGPoint(x: 0.25837*width, y: 0.70094*height), control1: CGPoint(x: 0.33639*width, y: 0.5136*height), control2: CGPoint(x: 0.23716*width, y: 0.67108*height))
        path.addCurve(to: CGPoint(x: 0.37241*width, y: 0.65555*height), control1: CGPoint(x: 0.26856*width, y: 0.7153*height), control2: CGPoint(x: 0.30657*width, y: 0.70017*height))
        path.addCurve(to: CGPoint(x: 0.57157*width, y: 0.48519*height), control1: CGPoint(x: 0.4388*width, y: 0.59876*height), control2: CGPoint(x: 0.50519*width, y: 0.54197*height))
        path.addCurve(to: CGPoint(x: 0.668*width, y: 0.42648*height), control1: CGPoint(x: 0.62663*width, y: 0.43556*height), control2: CGPoint(x: 0.65878*width, y: 0.41598*height))
        path.addCurve(to: CGPoint(x: 0.3868*width, y: 0.94668*height), control1: CGPoint(x: 0.6886*width, y: 0.44991*height), control2: CGPoint(x: 0.59487*width, y: 0.62331*height))
        path.addCurve(to: CGPoint(x: 0.55604*width, y: 0.2285*height), control1: CGPoint(x: 0.44321*width, y: 0.70729*height), control2: CGPoint(x: 0.49963*width, y: 0.4679*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.59346*width, y: 0.19335*height))
        path.addCurve(to: CGPoint(x: 0.23056*width, y: 0.67571*height), control1: CGPoint(x: 0.33066*width, y: 0.47975*height), control2: CGPoint(x: 0.20969*width, y: 0.64054*height))
        path.addCurve(to: CGPoint(x: 0.35897*width, y: 0.63936*height), control1: CGPoint(x: 0.2406*width, y: 0.69262*height), control2: CGPoint(x: 0.2834*width, y: 0.68051*height))
        path.addCurve(to: CGPoint(x: 0.59036*width, y: 0.47616*height), control1: CGPoint(x: 0.4361*width, y: 0.58496*height), control2: CGPoint(x: 0.51322*width, y: 0.53056*height))
        path.addCurve(to: CGPoint(x: 0.70052*width, y: 0.42318*height), control1: CGPoint(x: 0.65452*width, y: 0.42828*height), control2: CGPoint(x: 0.69124*width, y: 0.41062*height))
        path.addCurve(to: CGPoint(x: 0.3519*width, y: 0.95975*height), control1: CGPoint(x: 0.72122*width, y: 0.45125*height), control2: CGPoint(x: 0.60503*width, y: 0.6301*height))
        path.addCurve(to: CGPoint(x: 0.59347*width, y: 0.19334*height), control1: CGPoint(x: 0.43242*width, y: 0.70429*height), control2: CGPoint(x: 0.51295*width, y: 0.44882*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.63718*width, y: 0.15925*height))
        path.addCurve(to: CGPoint(x: 0.20208*width, y: 0.64484*height), control1: CGPoint(x: 0.32703*width, y: 0.44202*height), control2: CGPoint(x: 0.18199*width, y: 0.60389*height))
        path.addCurve(to: CGPoint(x: 0.3455*width, y: 0.62007*height), control1: CGPoint(x: 0.21174*width, y: 0.66452*height), control2: CGPoint(x: 0.25955*width, y: 0.65625*height))
        path.addCurve(to: CGPoint(x: 0.61159*width, y: 0.46849*height), control1: CGPoint(x: 0.4342*width, y: 0.56954*height), control2: CGPoint(x: 0.52289*width, y: 0.51901*height))
        path.addCurve(to: CGPoint(x: 0.73634*width, y: 0.42337*height), control1: CGPoint(x: 0.68559*width, y: 0.42358*height), control2: CGPoint(x: 0.72717*width, y: 0.40854*height))
        path.addCurve(to: CGPoint(x: 0.31262*width, y: 0.96999*height), control1: CGPoint(x: 0.7568*width, y: 0.45652*height), control2: CGPoint(x: 0.61558*width, y: 0.63872*height))
        path.addCurve(to: CGPoint(x: 0.63716*width, y: 0.15926*height), control1: CGPoint(x: 0.4208*width, y: 0.69974*height), control2: CGPoint(x: 0.52899*width, y: 0.42949*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.68771*width, y: 0.12703*height))
        path.addCurve(to: CGPoint(x: 0.17333*width, y: 0.60772*height), control1: CGPoint(x: 0.32601*width, y: 0.40031*height), control2: CGPoint(x: 0.15455*width, y: 0.56054*height))
        path.addCurve(to: CGPoint(x: 0.33228*width, y: 0.59738*height), control1: CGPoint(x: 0.18237*width, y: 0.63039*height), control2: CGPoint(x: 0.23534*width, y: 0.62694*height))
        path.addCurve(to: CGPoint(x: 0.63547*width, y: 0.46258*height), control1: CGPoint(x: 0.43334*width, y: 0.55244*height), control2: CGPoint(x: 0.53441*width, y: 0.50751*height))
        path.addCurve(to: CGPoint(x: 0.77557*width, y: 0.42778*height), control1: CGPoint(x: 0.72*width, y: 0.42206*height), control2: CGPoint(x: 0.76669*width, y: 0.41046*height))
        path.addCurve(to: CGPoint(x: 0.26887*width, y: 0.97659*height), control1: CGPoint(x: 0.79539*width, y: 0.46647*height), control2: CGPoint(x: 0.62649*width, y: 0.64939*height))
        path.addCurve(to: CGPoint(x: 0.68772*width, y: 0.12703*height), control1: CGPoint(x: 0.40848*width, y: 0.69341*height), control2: CGPoint(x: 0.5481*width, y: 0.41022*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.74555*width, y: 0.09768*height))
        path.addCurve(to: CGPoint(x: 0.14477*width, y: 0.56371*height), control1: CGPoint(x: 0.32818*width, y: 0.35452*height), control2: CGPoint(x: 0.1279*width, y: 0.50987*height))
        path.addCurve(to: CGPoint(x: 0.31959*width, y: 0.57099*height), control1: CGPoint(x: 0.15287*width, y: 0.5896*height), control2: CGPoint(x: 0.21115*width, y: 0.59201*height))
        path.addCurve(to: CGPoint(x: 0.66206*width, y: 0.45889*height), control1: CGPoint(x: 0.43375*width, y: 0.53362*height), control2: CGPoint(x: 0.5479*width, y: 0.49625*height))
        path.addCurve(to: CGPoint(x: 0.81816*width, y: 0.43719*height), control1: CGPoint(x: 0.75777*width, y: 0.42442*height), control2: CGPoint(x: 0.80981*width, y: 0.41719*height))
        path.addCurve(to: CGPoint(x: 0.22043*width, y: 0.9787*height), control1: CGPoint(x: 0.83681*width, y: 0.48186*height), control2: CGPoint(x: 0.63759*width, y: 0.66235*height))
        path.addCurve(to: CGPoint(x: 0.74555*width, y: 0.09768*height), control1: CGPoint(x: 0.39547*width, y: 0.68503*height), control2: CGPoint(x: 0.57052*width, y: 0.39135*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.81118*width, y: 0.07231*height))
        path.addCurve(to: CGPoint(x: 0.11695*width, y: 0.51218*height), control1: CGPoint(x: 0.33413*width, y: 0.30465*height), control2: CGPoint(x: 0.10271*width, y: 0.45127*height))
        path.addCurve(to: CGPoint(x: 0.30775*width, y: 0.54061*height), control1: CGPoint(x: 0.12379*width, y: 0.54146*height), control2: CGPoint(x: 0.18739*width, y: 0.55093*height))
        path.addCurve(to: CGPoint(x: 0.69145*width, y: 0.45795*height), control1: CGPoint(x: 0.43565*width, y: 0.51306*height), control2: CGPoint(x: 0.56355*width, y: 0.48551*height))
        path.addCurve(to: CGPoint(x: 0.86404*width, y: 0.45246*height), control1: CGPoint(x: 0.79893*width, y: 0.43143*height), control2: CGPoint(x: 0.85646*width, y: 0.4296*height))
        path.addCurve(to: CGPoint(x: 0.16725*width, y: 0.97533*height), control1: CGPoint(x: 0.88097*width, y: 0.50354*height), control2: CGPoint(x: 0.64871*width, y: 0.67783*height))
        path.addCurve(to: CGPoint(x: 0.81118*width, y: 0.07231*height), control1: CGPoint(x: 0.38189*width, y: 0.67433*height), control2: CGPoint(x: 0.59654*width, y: 0.37332*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.88501*width, y: 0.05222*height))
        path.addCurve(to: CGPoint(x: 0.09053*width, y: 0.45253*height), control1: CGPoint(x: 0.34456*width, y: 0.25074*height), control2: CGPoint(x: 0.07972*width, y: 0.38418*height))
        path.addCurve(to: CGPoint(x: 0.29718*width, y: 0.50597*height), control1: CGPoint(x: 0.09574*width, y: 0.48538*height), control2: CGPoint(x: 0.16461*width, y: 0.50319*height))
        path.addCurve(to: CGPoint(x: 0.72371*width, y: 0.46038*height), control1: CGPoint(x: 0.43936*width, y: 0.49078*height), control2: CGPoint(x: 0.58153*width, y: 0.47558*height))
        path.addCurve(to: CGPoint(x: 0.91308*width, y: 0.47457*height), control1: CGPoint(x: 0.84344*width, y: 0.44391*height), control2: CGPoint(x: 0.90657*width, y: 0.44864*height))
        path.addCurve(to: CGPoint(x: 0.10929*width, y: 0.96543*height), control1: CGPoint(x: 0.9276*width, y: 0.53246*height), control2: CGPoint(x: 0.65968*width, y: 0.69609*height))
        path.addCurve(to: CGPoint(x: 0.88501*width, y: 0.05222*height), control1: CGPoint(x: 0.36785*width, y: 0.66103*height), control2: CGPoint(x: 0.62644*width, y: 0.35663*height))
        path.closeSubpath()
        path.move(to: CGPoint(x: 0.96741*width, y: 0.03885*height))
        path.addCurve(to: CGPoint(x: 0.0663*width, y: 0.38414*height), control1: CGPoint(x: 0.3602*width, y: 0.19296*height), control2: CGPoint(x: 0.05982*width, y: 0.30805*height))
        path.addCurve(to: CGPoint(x: 0.28832*width, y: 0.46682*height), control1: CGPoint(x: 0.06941*width, y: 0.42071*height), control2: CGPoint(x: 0.14343*width, y: 0.44827*height))
        path.addLine(to: CGPoint(x: 0.75882*width, y: 0.46682*height))
        path.addCurve(to: CGPoint(x: 0.96501*width, y: 0.5045*height), control1: CGPoint(x: 0.89119*width, y: 0.4628*height), control2: CGPoint(x: 0.95992*width, y: 0.47537*height))
        path.addCurve(to: CGPoint(x: 0.0466*width, y: 0.94782*height), control1: CGPoint(x: 0.97637*width, y: 0.56957*height), control2: CGPoint(x: 0.67025*width, y: 0.71735*height))
        path.addCurve(to: CGPoint(x: 0.96741*width, y: 0.03885*height), control1: CGPoint(x: 0.35354*width, y: 0.64484*height), control2: CGPoint(x: 0.66048*width, y: 0.34184*height))
        path.closeSubpath()
        path.addEllipse(in: CGRect(x: 0.7035*width, y: 0.07424*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.75783*width, y: 0, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.74494*width, y: 0.06299*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.78361*width, y: 0.04049*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.90884*width, y: 0.01575*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.95212*width, y: 0.09224*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.90239*width, y: 0.15523*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.94751*width, y: 0.14398*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.99079*width, y: 0.07987*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.7256*width, y: 0.03487*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.06998*width, y: 0.97863*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.07459*width, y: 0.87064*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.08379*width, y: 0.8144*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.02394*width, y: 0.97863*height, width: 0.00921*width, height: 0.01125*height))
        path.addEllipse(in: CGRect(x: 0.92173*width, y: 0.12373*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.99079*width, y: 0.13161*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.96133*width, y: 0.07424*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.97145*width, y: 0.11586*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.75414*width, y: 0.036*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.72376*width, y: 0, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.79282*width, y: 0.01575*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.10129*width, y: 0.99213*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.09484*width, y: 0.85264*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0.03775*width, y: 0.90551*height, width: 0.00645*width, height: 0.00787*height))
        path.addEllipse(in: CGRect(x: 0, y: 0.94713*height, width: 0.00645*width, height: 0.00787*height))
        return path
    }
}
