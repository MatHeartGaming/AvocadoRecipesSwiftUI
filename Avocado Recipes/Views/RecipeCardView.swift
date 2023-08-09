//
//  RecipeCardView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct RecipeCardView: View {
    
    //MARK: - PROPERTIES
    let recipe : Recipe
    private let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    @State private var showDetailView = false
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                                .font(.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                            
                            Spacer()
                        } //: VSTACK
                    } //: HSTACK
                )
            
            VStack(alignment: .leading, spacing: 12) {
                //TITLE
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .italic()
                
                //RATES
                RecipeRatingView(recipe: recipe)
                
                //COOKING
                RecipeCookingView(recipe: recipe)
                
            } //: VSTACK
            .padding(4)
            
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showDetailView = true
        }
        .sheet(isPresented: $showDetailView) {
            RecipeDetailView(recipe: recipe)
        }
    }
}


//MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
