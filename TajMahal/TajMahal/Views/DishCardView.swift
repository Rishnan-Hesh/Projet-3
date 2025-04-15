//
//  MenuDetailsView.swift
//  TajMahal
//
//  Created by Johan Trino on 08/04/2025.
//
import SwiftUI

struct DishCardView: View {
    
    var dishes: Dish
    
    var body: some View {
        HStack {
            dishes.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120, height: 90)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(dishes.name)
                    .bold()
                    .foregroundStyle(Color.customGray)
                
                Text(dishes.description)
                    .font(.system(.caption))
                    .foregroundStyle(Color.customGray)
                    .multilineTextAlignment(.leading)
                
                HStack {
                    Text(dishes.price)
                        .font(.system(.caption))
                        .foregroundStyle(Color.customGray)
                    
                    Spacer()
                    PeppersView(dishes: dishes)
                }
            }
            .padding(.horizontal)
        }
        .padding(10)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
