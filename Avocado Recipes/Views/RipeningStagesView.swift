//
//  RipeningStagesView.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 08/08/23.
//

import SwiftUI

struct RipeningStagesView: View {
    
    //MARK: - PROPERTIES
    private var ripeningStages : [Ripening] = ripeningData
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                } //: HSTACK
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            } // VSTACK
        } //: SCROLL
        .ignoresSafeArea()
    }
}


//MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
