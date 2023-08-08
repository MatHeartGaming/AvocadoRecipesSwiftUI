//
//  ContentView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State private var showSplashScreen = true
    
    //MARK: - BODY
    var body: some View {
        VStack {
            if !showSplashScreen {
                AppView()
            } else {
                SplashScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            withAnimation(.easeInOut) {
                                showSplashScreen = false
                            }
                        }
                    }
            }
        }
        .ignoresSafeArea()
        
    }
}


//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
