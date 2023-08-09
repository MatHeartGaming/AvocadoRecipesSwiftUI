//
//  RecipeRatingView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct RecipeRatingView: View {
    
    //MARK: - PROPERTIES
    let recipe : Recipe
    
    //MARK: - BODY
    var body: some View {
        HStack {
            ForEach(0 ..< recipe.rating, id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            } //: LOOP
        } //: HSTACK
    }
}


//MARK: - PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
