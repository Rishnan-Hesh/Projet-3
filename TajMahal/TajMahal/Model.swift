//
//  Model.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import Foundation
import SwiftUI


enum SpiceLevel {
    case light
    case medium
    case hot
}

// = Plat
struct Dish: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var allergens: String
    var ingredients: String
    var spiceLevel: SpiceLevel
    var imageName: String
    var price: String
    
    var image: Image {
        Image(imageName)
    }
}
