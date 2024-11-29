// The Swift Programming Language
// https://docs.swift.org/swift-book



import SwiftUI


public struct CoverageView: View {
    
    public init() {
        
    }
    
    public var body: some View {
        
        NavigationStack {
                List(SelfShape.allCases) { shape in
                    NavigationLink {
                        DetailView(shape: shape)
                    } label: {
                        DetailView2(shape: shape)
                            .listRowBackground(Color(cgColor: shape.tintColor).opacity(0.2))                    }
            }
            
                .buttonStyle(.plain)

            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    CoverageView()
    
}

public struct DetailView2: View {
    
    let shape: SelfShape
    
    public var body: some View {
        
        
            ShapeSelectionRepresentable(shape: shape, weight: .light, withAnimationOn: false)
                .scaleEffect(3)
        .overlay {
                    Text(shape.rawValue)
                        .padding(16)
                        .background(Material.thickMaterial)
                        .mask(Capsule())

                }

    }
}


struct CoverageListRowView: View {

    let item: SelfShape
    
    var body: some View {
        
            Text(item.rawValue)
                .controlSize(.large)
                .frame(maxWidth: .infinity)


        
        
        .padding()
        
        
        
        .frame(maxWidth: .infinity, idealHeight: 120, maxHeight: 120)
        
        
        
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
