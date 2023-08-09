//
//  RecipeDetailView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    //MARK: - PROPERTIES
    let recipe : Recipe
    @State private var pulsating = false
    @Environment(\.presentationMode) var presentation
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    //Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    
                    //Rating
                    RecipeRatingView(recipe: recipe)
                    
                    //Cooking
                    RecipeCookingView(recipe: recipe)
                    
                    //Ingredients
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            VStack(alignment: .leading, spacing: 5) {
                                
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                
                                Divider()
                            } //: VSTACK
                        } //: LOOP
                    } //: VSTACK
                    
                    //INSTRUCTIONS
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) {instruction in
                        VStack(alignment: .center, spacing: 5) {
                            
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                            
                            Text(instruction)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                    
                    
                } //: GROUP
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                
            } //. VSTACK
        } //: SCROLL
        .ignoresSafeArea()
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsating ? 1 : 0.6)
                            .scaleEffect(pulsating ? 1.2 : 0.8, anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsating)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    
                    Spacer()
                    
                } //: VSTACK
            } //: HSTACK
        )
        .onAppear {
            self.pulsating = true
        }
    }
}


//MARK: - PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
        //.padding()
    }
}
