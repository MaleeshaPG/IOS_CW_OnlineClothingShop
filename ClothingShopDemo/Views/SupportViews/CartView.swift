//
//  CartView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-30.
//

//import SwiftUI
//
//struct CartView: View {
//    @ObservedObject var cartManager: CartManager
//    var body: some View {
//        ScrollView {
//            Text("Your cart is empty")
//        }
//        .navigationTitle("My Cart")
//        .padding(.top)
//    }
//}
//
//#Preview {
//    CartView(cartManager: CartManager())
//}

import SwiftUI

struct CartView: View {
    @ObservedObject var cartManager: CartManager
    
    var body: some View {
        NavigationView {
            ScrollView {
                if cartManager.products.isEmpty {
                    Text("Your cart is empty")
                        .padding()
                } else {
                    VStack(spacing: 10) {
                        
                        ForEach(cartManager.products, id: \._id) { product in
                            CartItemView(product: product)
                        }
                        
//                        Text("Total: $\(cartManager.total)")
//                            .font(tenorSans(16))
//                            .bold()
//                            .padding(.top, 10)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: 1)
                            .background(Color.gray)
                            .padding(.top, 80)
                        HStack {
                            
                            Text ("Total Amount")
                                .font(tenorSans(20))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Text("$\(cartManager.total)")
                                .font(tenorSans(20))
                                
                            
                        }
//                        .padding(.top, 80)
                        .padding([.leading, .trailing], 20)
                                            
                            Text("shipping chargers, taxes and discount codes are calculated at the time of accounting.")
                            .font(tenorSans(14))
                            .foregroundColor(.gray)
                            .frame(height: 72, alignment: .topLeading)
//                            .padding([.leading, .trailing], 20)

                    }
                    .padding([.leading, .trailing], 20)
                    
                    Spacer()
                }
            }
            .navigationTitle("My Cart")
            .padding(.top)
        }
    }
}

struct CartItemView: View {
    let product: Product
    
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 100, height: 133)
                .background(
                    Image(product.img_path)
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width: 100, height: 133)
                        .clipped()
                )
            VStack(alignment: .leading) {
                Text(product.name)
                    .font(tenorSans(16))
                
                Text("$\(product.price)")
                    .font(tenorSans(16))
            }
            Spacer()

//            Text(product.name)
//            Spacer()
//            Text("$\(product.price)")
        }
        .padding(.vertical, 5)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        let cartManager = CartManager()
        cartManager.products = productList // Assign the original list of products to the cartManager
        return CartView(cartManager: cartManager)
    }
}
