//
//  FactsView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct FactsView: View {
    
    //MARK: - PROPERTIES
    let fact : Fact
    
    //MARK: - BODY
    var body: some View {
        ZStack(alignment: .leading) {
            Text(fact.content)
                .padding(EdgeInsets(top: 3, leading: 55, bottom: 3, trailing: 10))
                .frame(height: 135, alignment: .center)
                .frame(idealWidth: 350, maxWidth: 500)
                .background(
                    LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing)
                        .cornerRadius(12)
                        .lineLimit(6)
                        .multilineTextAlignment(.leading)
                        .font(.footnote)
                        .foregroundColor(.white)
            )
            
            Image(fact.image)
                .resizable()
                .scaledToFit()
                .frame(width: 66)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearenceAdaptive"))
                        .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -35)
            
        } //: ZSTACK
    }
}


//MARK: - PREVIEW
struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factData[0])
            .previewLayout(.fixed(width: 800, height: 400))
            .padding()
    }
}
