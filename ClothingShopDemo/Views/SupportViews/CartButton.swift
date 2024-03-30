//
//  CartButton.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-29.
//

//import SwiftUI
//
//struct CartButton: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//#Preview {
//    CartButton()
//}

import SwiftUI
struct CartButton: View {
    var noOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 25)
                .padding(.top, 10)
            
            if noOfProducts > 0 {
                Text("\(noOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.668, brightness: 0.968))
                    .cornerRadius(50)
            }
        }
    }
}
#Preview {
    CartButton(noOfProducts: 1)
}

