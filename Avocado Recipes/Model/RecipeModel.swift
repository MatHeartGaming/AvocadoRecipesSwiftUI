//
//  RecipeModel.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct Recipe : Identifiable {
    
    var id = UUID()
    var title : String
    var headline : String
    var image : String
    var rating : Int
    var serves : Int
    var preparation : Int
    var cooking : Int
    var instructions : [String]
    var ingredients : [String]
    
}
