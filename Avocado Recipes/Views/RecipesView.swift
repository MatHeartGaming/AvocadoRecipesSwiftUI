//
//  HomeView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct RecipesView: View {
    
    //MARK: - PROPERTIES
    private var headers : [Header] = headersData
    private var facts : [Fact] = factData
    private var recipes : [Recipe] = recipeData
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            //MARK: - HEADER
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(headers) { header in
                        HeaderView(header: header)
                    }
                }
            }
            
            //MARK: - DISHES
            Text("Avocado Dishes")
                .bold()
                .modifier(TitleModifier())
            DishesView()
                .frame(maxWidth: 640)
            
            
            //MARK: - AVOCADO FACTS
            Text("Avocado Facts")
                .bold()
                .modifier(TitleModifier())
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 16) {
                    ForEach(facts) { fact in
                        FactsView(fact: fact)
                            .padding(.trailing, 40)
                    } //: LOOP
                } //: HSTACK
                .padding(.vertical)
                .padding(.leading, 60)
                .padding(.trailing, 20)
            } //: SCROLL
            
            //MARK: - RECIPE CARDS
            Text("Avocado Recipes")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            VStack(alignment: .center, spacing: 20) {
                ForEach(recipes) { recipe in
                    RecipeCardView(recipe: recipe)
                }
            }
            .frame(maxWidth: 640)
            .padding(.horizontal)
            
            //MARK: - FOOTER
            VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                Text("Everything you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                    .frame(minHeight: 60)
            } //: VSTACK
            .frame(maxWidth: 640)
            .padding()
            .padding(.bottom, 85)
            
        } //: SCROLL
        .edgesIgnoringSafeArea(.all)
        
    }
}


//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
            .previewLayout(.sizeThatFits)
            //.padding()
    }
}
