//
//  MirrorDishComponent.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct MirrorDishComponent: View {
    
    //MARK: - PROPERTIES
    var icon : String
    var text : String
    var showDivider = true
    @State var mirrorView : Bool = false
    @State private var isAnimating : Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Image(icon)
                    .resizable()
                    .modifier(IconModifier())
                
                Spacer()
                
                Text(text)
                    .frame(width: 100)
                    .multilineTextAlignment(.leading)
                    .rotation3DEffect(.degrees(mirrorView ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            } //: VSTACK
            .rotation3DEffect(.degrees(mirrorView ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .opacity(isAnimating ? 1 : 0)
            .animation(.spring(response: 0.8, dampingFraction: 1.6, blendDuration: 1), value: mirrorView)
            .onAppear {
                mirrorView.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                    mirrorView.toggle()
                    isAnimating = true
                }
            }
            
            Divider()
                .opacity(showDivider ? 1 : 0)
            
        } //: VSTACK
    }
}


//MARK: - PREVIEW
struct MirrorDishComponent_Previews: PreviewProvider {
    static var previews: some View {
        MirrorDishComponent(icon: "icon-toasts", text: "Toast", mirrorView: true)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
