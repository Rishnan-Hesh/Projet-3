//
//  MenuView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI

struct MenuView: View {
    
    private let viewModel = ViewModel()
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.customMenu)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 10){
                        
                        // Entrées
                        Section {
                            ForEach(viewModel.apetizerArray) { dish in
                                NavigationLink(destination: PlatsView(dishes: dish)) {
                                    DishCardView(dishes: dish)
                                }
                            }
                            .padding(.horizontal, 12)
                        } header: {
                            Text("Entrées")
                                .font(.system(.subheadline))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 12)
                        }
                        
                        // Plats Principaux
                        Section {
                            ForEach(viewModel.mainCourseArray) { dish in
                                NavigationLink(destination: PlatsView(dishes: dish)) {
                                    DishCardView(dishes: dish)
                                }
                            }
                            .padding(.horizontal, 12)
                        } header: {
                            Text("Plats Principaux")
                                .font(.system(.subheadline))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 12)
                        }
                    }
                    .padding(.bottom, 20)
                }
            }
            .navigationTitle("Menu")
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
}

#Preview {
    NavigationView {
        MenuView()
    }
}
