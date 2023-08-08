//
//  ScaleOpacityAnimation.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct ScaleOpacityAnimation: ViewModifier {
    
    //MARK: - PROPERTIES
    @State private var pulsateAnimation = false
    var duration : Double = 1.5
    var minOpacity : Double = 0.9
    var minScale : Double = 0.9
    var animation : Animation?
    
    //MARK: - ANIMATION BODY
    private var computedAnimation : Animation {
        return animation ?? .easeInOut(duration: duration)
    }
    
    func body(content: Content) -> some View {
        content
            .scaleEffect(pulsateAnimation ? 1 : minScale)
            .opacity(pulsateAnimation ? 1 : minOpacity)
            .animation(computedAnimation, value: pulsateAnimation)
            .onAppear {
                pulsateAnimation = true
            }
    }
}
