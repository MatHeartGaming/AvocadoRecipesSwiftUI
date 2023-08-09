//
//  FactModel.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

//MARK: - FACT MODEL

struct Fact : Identifiable {
    
    var id = UUID()
    var image : String
    var content : String
    
}
