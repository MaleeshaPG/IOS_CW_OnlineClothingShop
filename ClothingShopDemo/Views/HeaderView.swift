//
//  HeaderView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-24.
//

import SwiftUI

struct HeaderView: View {
    @StateObject var cartManager = CartManager()
    var body: some View {
        NavigationView {
            ZStack {
                HStack {
                    Button {
                        
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
                    
                    NavigationLink {//destination
                        CartView()
                            .environmentObject(cartManager)
                    } label: {//label
                        CartButton(noOfProducts: cartManager.products.count)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                }
                
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .frame(height: 56)
                .background(.white)
                .zIndex(1)
                .shadow(radius: 0.3)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    HeaderView()
}
