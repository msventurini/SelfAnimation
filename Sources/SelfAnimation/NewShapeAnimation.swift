//
//  NewShapeAnimation.swift
//  SelfAnimation
//
//  Created by Matheus Silveira Venturini on 08/11/24.
//



import SwiftUI

struct ContentView3: View {
    
    @State var teste: Bool = false
    
//    let angleFactor = 130.0 / 31
    let angleFactor = 9.1
//    let angleFactor = Angle(degrees: 9.1)
    let scaleFactor = 1.0 / 30
    
    
    
    @State var backgroundIsTrimmed: Bool = true
    
    var body: some View {

        
        
        
        TimelineView(.animation) { timeline in
            let x1 = (sin(timeline.date.timeIntervalSince1970) + 1) * 0.5 * 0.5// + 0.5
            let x2 = (cos(timeline.date.timeIntervalSince1970) + 1) * 0.5
            
            let x3 = x2 - 0.02
            let x4 = x2
            ZStack {
                ForEach((1...31), id: \.self) { i in
                    
                    FinalShape2()
                        .rotation(Angle(degrees: -90 + (angleFactor * CGFloat(i))), anchor: .center)
                    
                        .stroke(
                            style: .init(
                                lineWidth: 2,
                                lineCap: .round,
                                lineJoin: .round,
                                dash: [0, 10],
                                dashPhase: x1 * 80
                            )
                        )
                        .scale(CGFloat(i) * -scaleFactor, anchor: .center)
                        .aspectRatio(631/1228, contentMode: .fit)
                }
                
            }

                
                .frame(width: 400, height: 400)

            
        }
        
//        MyIcon()
//            .stroke(style: .init(lineWidth: 2, lineCap: .round, lineJoin: .round, dash: [1, 10], dashPhase: teste == true ? 0 : 80))
//            .aspectRatio(631/1228, contentMode: .fill)
//
////            }
//            .animation(.bouncy, value: teste)
//            .frame(width: 300, height: 300)
//        Button {
//            teste.toggle()
//        } label: {
//            Text("teste")
//        }
    }


}

#Preview {
    ContentView3()
    
}

