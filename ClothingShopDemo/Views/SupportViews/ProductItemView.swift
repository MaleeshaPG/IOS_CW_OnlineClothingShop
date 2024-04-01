//
//  ProductItemView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-27.
//

import SwiftUI

struct ProductItemView: View {
    @ObservedObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack() {
                Image(product.img_path)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 165, height: 200)
                    .cornerRadius(20)
                    .shadow(radius: 1)
                
                VStack {
                    Text(product.name)
                        .font(Font.custom("Tenor Sans", size: 16))
                        .multilineTextAlignment(.leading)
                        .frame(width: 165, alignment: .leading)
                    
                    Text("$\(product.price)")
                        .font(Font.custom("Tenor Sans", size: 16))
                        .multilineTextAlignment(.center)
                        .padding(.top, 1)
                        .frame(width: 165, alignment: .leading)
                }
    
            }
            //remove this plus
            Button {
                cartManager.addToCart(product: product)
            }label: {
                Image(systemName: "plus")
                    .bold()
                    .padding(10)
                    .foregroundColor(.black)
                    .background(.black.opacity(0.2))
                    .cornerRadius(50)
//                    .padding()
            }
        }
    }
}

#Preview {
    ProductItemView(cartManager: CartManager(), product: productList[0])
}
