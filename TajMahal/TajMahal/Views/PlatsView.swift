//
//  PlatsView.swift
//  TajMahal
//
//  Created by Johan Trino on 08/04/2025.
//
import SwiftUI


struct PlatsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var dishes: Dish

    var body: some View {
        NavigationView {
            
                VStack(alignment: .leading, spacing: 40) {

                    ZStack(alignment: .topTrailing) {
                        dishes.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(minWidth: 335, idealWidth: .infinity, maxWidth: .infinity,minHeight: 445, idealHeight: .infinity, maxHeight: .infinity, alignment: .center)
                            .cornerRadius(10) // coins arrondis
                            

                        PeppersView(dishes: dishes)
                            .padding(12)// a replacer
                            .position(x: 305, y: 35)
                    }

                    VStack(alignment: .leading, spacing: 8) {
                        // Allergènes
                        Text("Allergènes:")
                            .font(.system(.subheadline))
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                            .bold()
                        Text(dishes.allergens)
                            .font(.system(size: 18))
                            .foregroundColor(.gray)
                            .padding(.bottom, 20)

                        Divider()

                        // Ingrédients
                        Text("Ingrédients:")
                            .font(.system(.subheadline))
                            .foregroundColor(.gray)
                            .bold()
                            .padding(.top, 20)
                        Text(dishes.ingredients)
                            .foregroundColor(.gray)
                            
                    }
                    .font(.system(size: 15))
                }
                .padding(20)
            }
            .navigationTitle(dishes.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }

#Preview {
    PlatsView(dishes: Dish(name: "",
                             description: "",
                             allergens: "",
                             ingredients: "",
                             spiceLevel: .hot,
                             imageName: "",
                             price: ""))
}
