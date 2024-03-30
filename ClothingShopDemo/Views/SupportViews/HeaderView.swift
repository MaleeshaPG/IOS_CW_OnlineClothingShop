//
//  HeaderView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-24.
//

import SwiftUI

struct HeaderView: View {
    
    var menuAction: ButtonAction
//    var cartAction: ButtonAction
    
    var body: some View {
        ZStack {
            HStack {
                Button {
                    menuAction()
                } label: {
                    Image("Menu")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Image("Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
//                Button {
//                    cartAction()
//                } label: {
//                    Image(systemName: "cart")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                }
//                CartButton(noOfProducts: 1)
                NavigationLink {
                    CartView()
                }label: {
                    CartButton(noOfProducts: 1)
                }
                
                .frame(width: 24, height: 36)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 56)
            .background(.white)
            .zIndex(1)
            .shadow(radius: 0.3)
        }
        
    }
}

//#Preview {
//    HeaderView()
//}
