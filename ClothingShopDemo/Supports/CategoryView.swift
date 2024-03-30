//
//  CategoryView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-27.
//

import SwiftUI

struct CategoryView: View {
    var isSelected: Bool = false
    var title: String = "All"
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(Font.custom("Tenor Sans", size: 16))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.black : Color.gray.opacity(0.5))
            
            if isSelected {
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: 5, height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

#Preview {
    CategoryView()
}
