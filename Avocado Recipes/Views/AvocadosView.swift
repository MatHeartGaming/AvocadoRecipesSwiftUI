//
//  AvocadosView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct AvocadosView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Image("avocado")
                .resizable()
                .scaledToFit()
                .frame(width: 240, height: 240)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .modifier(ScaleOpacityAnimation(animation: .easeInOut(duration: 1.5).repeatForever(autoreverses: true)))
            
            Text("Avocados".uppercased())
                .font(.system(size: 42, weight: .bold, design: .serif))
                .foregroundColor(.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 4)
                .modifier(ScaleOpacityAnimation())
            
            Text("Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .foregroundColor(Color("ColorGreenLight"))
                .frame(maxWidth: 640, minHeight: 120)
                .padding(.horizontal)
                .modifier(ScaleOpacityAnimation())
            
        } //: VSTACK
        .frame(maxHeight: .infinity)
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
    }
}


//MARK: - PREVIEW
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .previewLayout(.sizeThatFits)
            //.padding()
            .preferredColorScheme(.dark)
    }
}
