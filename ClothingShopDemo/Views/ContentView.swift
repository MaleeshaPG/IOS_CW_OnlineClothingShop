//
//  ContentView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum:160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id){ product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Hanger"))
            .toolbar {
                NavigationLink {//destination
                    CartView()
                        .environmentObject(cartManager)
                } label: {//label
                    CartButton(noOfProducts: cartManager.products.count)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}