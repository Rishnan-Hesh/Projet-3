//
//  LineView.swift
//  TajMahal
//
//  Created by Johan Trino on 07/04/2025.
//

import SwiftUI



struct LineView: View {
    
    let imageSystemName: String
    let leftText: String
    let rightText: String
    
    var body: some View {
        HStack {
            Image(systemName: imageSystemName)
            Text(leftText)
            Spacer()
            Text(rightText)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 5)
        .foregroundColor(.customGray)
        .font(.system(size: 12))
    }
}

#Preview {
    LineView(imageSystemName: "clock.badge.checkmark", leftText: "Mardi", rightText: "17h00")
}
