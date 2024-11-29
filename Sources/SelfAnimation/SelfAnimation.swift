// The Swift Programming Language
// https://docs.swift.org/swift-book



import SwiftUI


public struct CoverageView: View {
    
    public init() {
        
    }
    
    public var body: some View {
        
        NavigationStack {
//            ScrollView {
//                ForEach(SelfShape.allCases) { shape in
                List(SelfShape.allCases) { shape in
              
                    NavigationLink {
                        DetailView(shape: shape)
//                        ShapeDemoRepresentable(shape: shape, weight: .light, isAsyncRendered: true)
                            .scaledToFit()
                    } label: {
                        CoverageListRowView(item: shape)
                            .drawingGroup()
                    }
                    .tint(.black)
   
//                }
            }

            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    CoverageView()
    
}

struct CoverageListRowView: View {

    let item: SelfShape
    
    var body: some View {
        
            Text(item.rawValue)
                .controlSize(.large)
                .frame(maxWidth: .infinity)


        
        
        .padding()
        
        
//        .background(.ultraThickMaterial.blendMode(.colorDodge))
//        .background((Image(SelfShape.imageFor(shape: item))))
        
//        .frame(maxWidth: .infinity, idealHeight: 120, maxHeight: 220)
        
        
        
    }
    
    
}


//
//
//extension SelfShape {
//    
//    static func imageFor(shape: SelfShape) -> ImageResource {
//        switch shape {
//        case .surprise:
//                .Dark.surprise
//        case .euphoria:
//                .Dark.euphoria
//        case .bravery:
//                .Dark.bravery
//        case .curiosity:
//                .Dark.curiosity
//        case .determination:
//                .Dark.determination
//        case .fullfilment:
//                .Dark.fullfilment
//        default:
//                .Dark.bravery
//        }
//    }
//    
//    
//    
//}
