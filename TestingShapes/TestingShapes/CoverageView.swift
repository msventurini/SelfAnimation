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
            
            
            VStack {
                Text("Light Mode")
                if item.lightShapeAttributes != nil {
                    Image(systemName: "checkmark.circle.fill")
                        .renderingMode(.template)
                        .symbolRenderingMode(.multicolor)
                        
                } else {
                    Image(systemName: "xmark.circle.fill")
                        .renderingMode(.template)
                        .symbolRenderingMode(.multicolor)
                }
            }
            VStack {
                
                Text("Dark Mode")
                if item.darkShapeAttributes != nil {
                    Image(systemName: "checkmark.circle.fill")
                        .renderingMode(.template)
                        .symbolRenderingMode(.multicolor)
                } else {
                    Image(systemName: "xmark.circle.fill")
                        .renderingMode(.template)
                        .symbolRenderingMode(.multicolor)
                }
            }
        }
        .padding()
        
        
        .background(.ultraThickMaterial.blendMode(.colorDodge))
        .clipShape(.buttonBorder, style: .init())
        .ignoresSafeArea()
        .background((item.image(emotionType: .Light)))
        
        .frame(maxWidth: .infinity, idealHeight: 220, maxHeight: 220)
        
        
        
    }
    
    
}


