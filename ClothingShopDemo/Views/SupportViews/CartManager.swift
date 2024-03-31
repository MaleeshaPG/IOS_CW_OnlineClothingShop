//
//  CartManager.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-30.
//

import Foundation
class CartManager:ObservableObject {
    @Published  var products: [Product] = []
    @Published  var total: Double = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter {$0._id != product._id }
        total -= product.price
    }
}
