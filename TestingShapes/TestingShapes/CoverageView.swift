//
//  CoverageView.swift
//  TestingShapes
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//


//
//  CoverageView.swift
//  EmotionAssets
//
//  Created by Matheus Silveira Venturini on 27/11/24.
//

import SwiftUI
import EmotionAssets

struct CoverageView: View {
    var body: some View {
        List {
            Section(header: Text("good")) {
                ForEach(EmotionAttributes.good) { emoAtt in
                    CoverageListRowView(item: emoAtt)
                        .drawingGroup()
                }
            }
            Section(header: Text("bad")) {
                ForEach(EmotionAttributes.bad) { emoAtt in
                    CoverageListRowView(item: emoAtt)
                        .drawingGroup()
                }
            }
        }
    }
}

#Preview {
    CoverageView()
}

struct CoverageListRowView: View {

    let item: EmotionAttributes
    
    var body: some View {
        HStack {
            Text(item.name)
                .controlSize(.large)
                .zIndex(2)
            
        }
        .ignoresSafeArea()
        .background((item.image(emotionType: .Dark)))
        
        .frame(maxWidth: .infinity, idealHeight: 220, maxHeight: 220)
        
        
        
    }
    
    
}


