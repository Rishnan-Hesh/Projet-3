//
//  WelcomeView.swift
//  TajMahal
//
//  Created by Amandine Cousin on 31/10/2023.
//

import SwiftUI


// Page d'accueil
struct WelcomeView: View {
    
    var body: some View {
        
        
        NavigationStack{
            
            Image("TajMahal")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: .infinity, alignment: .init(horizontal: .center, vertical: .top))
                .padding(.horizontal, 20)
                .padding(.top, 98)
            
            
            VStack(spacing: 5){
                
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Restaurant Indien")
                            .font(.subheadline)
                            .foregroundColor(Color("CustomGray"))
                        
                        Text("Taj Mahal")
                            .font(.title)
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .renderingMode(.template)//Permet de changer la couleur
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color("CustomGray")) // tint ou foregroundColor
                }
                .padding(20)
                .font(.system(size: 25))
                
                LineView(imageSystemName: "clock.badge.checkmark", leftText: "Mardi", rightText: "11h30-14h30 / 18h30-22h00")
                LineView(imageSystemName: "bag", leftText: "Type de Service", rightText: "À emporter")
                LineView(imageSystemName: "location.north.circle", leftText: "12 Avenue de la Brique-75010 Paris", rightText: "")
                LineView(imageSystemName: "globe", leftText: "www.tajmahal.fr", rightText: "")
                LineView(imageSystemName: "phone", leftText: "06 12 34 56 78", rightText: "")
                    
                
                
                Spacer()
                
                
                NavigationLink(destination: MenuView()) {
                    
                    Button("Accéder au menu") {
                        print("Bouton cliqué")
                    }
                    .navigationTitle("")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(12)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 12).fill(Color.customRed))
                    .padding(.horizontal, 25)
                    .padding(.bottom,100)
                    
                }
            }
        }
    }
}

                        

#Preview {
    WelcomeView()
}
