//
//  AppView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct AppView: View {
    
    //MARK: - PROPERTIES
    
    
    //MARK: - BODY
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Label("Avocados", image: "tabicon-branch")
                }
            
            RecipesView()
                .tabItem {
                    Label("Recipes", image: "tabicon-book")
                }
            
            RipeningStagesView()
                .tabItem {
                    Label("Ripening", image: "tabicon-avocado")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", image: "tabicon-settings")
                }
            
        } //: TAB
        .edgesIgnoringSafeArea(.top)
        .tint(.primary)
        .background(.white)
    }
}


//MARK: - PREVIEW
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
