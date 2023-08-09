//
//  RipeneningModel.swift
//  Avocado Recipes
//
//  Created by Matteo Buompastore on 09/08/23.
//

import SwiftUI

struct Ripening : Identifiable {
    var id = UUID()
    var image : String
    var stage : String
    var title : String
    var description : String
    var ripeness : String
    var instruction : String
}
