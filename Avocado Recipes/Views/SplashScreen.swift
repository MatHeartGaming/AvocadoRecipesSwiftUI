//
//  SplashScreen.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct SplashScreen: View {
    
    //MARK: - PROPERTIES
    @State private var isAnimating = false
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .opacity(isAnimating ? 1 : 0.9)
            
            VStack {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : -100)
                    .scaleEffect(isAnimating ? 1 : 0.6)
                
                Text("AVOCADOS")
                    .fontWeight(.bold)
                    .font(.system(size: 42, design: .serif))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(x: isAnimating ? 0 : -100)
            } //: VSTACK
            .animation(.spring(response: 1, dampingFraction: 1.8), value: isAnimating)
            
        } //: ZSTACK
        .onAppear {
            isAnimating.toggle()
            
            //MARK: - Also possible with this line of code here...
            /*withAnimation(.spring(response: 1, dampingFraction: 1.8)) {
                isAnimating.toggle()
            }*/
        }
    }
}


//MARK: - PREVIEW
struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
