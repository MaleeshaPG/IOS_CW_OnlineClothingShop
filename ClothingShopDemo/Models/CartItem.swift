//
//  CartItem.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-28.
//

import Foundation

class cartItem {
    var product: Product
    var count: Int = 0
    
    init(product: Product, count: Int) {
        self.product = product
        self.count = count
    }
}
