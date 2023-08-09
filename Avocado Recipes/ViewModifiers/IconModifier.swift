//
//  IconModifier.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct IconModifier : ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
    
}
