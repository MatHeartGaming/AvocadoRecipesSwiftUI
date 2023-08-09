//
//  DishesView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct DishesView: View {
    
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        HStack {
            ZStack(alignment: .center) {
                VStack(alignment: .center) {
                    HStack {
                        MirrorDishComponent(icon: "icon-toasts", text: "Toast")
                        
                        MirrorDishComponent(icon: "icon-guacamole", text: "Guacamole", mirrorView: true)
                    }
                    
                    HStack {
                        MirrorDishComponent(icon: "icon-tacos", text: "Tacos")
                        
                        MirrorDishComponent(icon: "icon-sandwiches", text: "Sandwiches", mirrorView: true)
                    }

                    
                    HStack {
                        MirrorDishComponent(icon: "icon-salads", text: "Salads")
                        
                        MirrorDishComponent(icon: "icon-soup", text: "Soup", mirrorView: true)
                    }
                    
                    HStack {
                        MirrorDishComponent(icon: "icon-halfavo", text: "Spreads", showDivider: false)
                        
                        MirrorDishComponent(icon: "icon-smoothies", text: "Smoothies", showDivider: false, mirrorView: true)
                    }
                } //: VSTACK
                
                Divider()
                    .rotationEffect(.degrees(90))
                    .frame(maxWidth: 220)
                
                
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                    .padding(.bottom, 8)
                    .background(Color("ColorAppearenceAdaptive"))
                
            } //: ZSTACK
            
        } //: HSTACK
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}


//MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
