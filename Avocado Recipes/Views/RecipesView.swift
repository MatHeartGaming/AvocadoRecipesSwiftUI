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
            
            //MARK: - FOOTER
            VStack(alignment: .center, spacing: 20) {
                Text("All About Avocados")
                    .font(.system(.title,design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .padding(8)
                
                Text("Everything you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
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
