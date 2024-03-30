//
//  CartView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-30.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            Text("Your cart is empty")
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
