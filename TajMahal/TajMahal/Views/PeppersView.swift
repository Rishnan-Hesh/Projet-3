//
//  PeppersView.swift
//  TajMahal
//
//  Created by Johan Trino on 08/04/2025.
//

import SwiftUI

struct PeppersView: View {
    
    var dishes: Dish
    
    // Fonction pour donner le niveau de pimetn entre 1 et 3
    func gradation(note: SpiceLevel) -> Int {
        if note == .hot {
            return 3
        } else if note == .medium {
            return 2
        } else {
            return 1
        }
    }
    
    var body: some View {
        
        let rating: Int = gradation(note: dishes.spiceLevel)
        
        ZStack {
            RoundedRectangle(cornerRadius: 11.0)
                .fill(Color.white)
                .frame(width: 80, height: 25)
            
            
            HStack {
                ForEach(1..<4) { index in
                    Image("Piment")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 16, maxHeight: 11)
                        .foregroundStyle(
                            rating >= index ? Color.customRed : Color.customGrayPepper)
                }
            }
        }
    }
}
      
