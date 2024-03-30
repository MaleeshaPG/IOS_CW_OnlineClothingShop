//
//  GenderView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-27.
//

import SwiftUI

struct GenderView: View {
    var isSelected: Bool = true
    var title: String = "WOMEN"
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(tenorSans(16))
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.black : Color.gray.opacity(0.5))
            
            if isSelected {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(height: 1)
                    
                    Rectangle()
                        .foregroundColor(Color.black)
                        .frame(width: 5, height: 5)
                        .rotationEffect(Angle(degrees: 45))
            
                }
            }else {
                Divider()
            }
        }
    }
}

#Preview {
    GenderView()
}
