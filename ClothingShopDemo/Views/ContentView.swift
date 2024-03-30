//
//  ContentView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-29.
//

import SwiftUI
struct ContentView: View {
    
    var columns = [GridItem(.adaptive(minimum:160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
//                    ForEach(productList, id: \.id){ product in
//                        ProductCard(product: product)
//                            .environmentObject(cartManager)
//                    }
                }
                .padding()
            }
            .navigationTitle(Text("Hanger"))
            .toolbar {
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
#Preview {
    ContentView()
}
