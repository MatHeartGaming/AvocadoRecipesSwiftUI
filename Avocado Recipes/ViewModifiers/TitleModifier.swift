//
//  TitleModifier.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI


struct TitleModifier : ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
    
}
