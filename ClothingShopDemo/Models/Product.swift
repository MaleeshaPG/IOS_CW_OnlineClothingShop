//
//  Product.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-22.
//

import Foundation
struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Brown Sweater", image: "Sweater1", price: 1000),
                   Product(name: "Grey Sweater", image: "Sweater2", price: 2000),
                   Product(name: "White Sweater", image: "Sweater3", price: 3000),
                   Product(name: "Black Sporty Sweater", image: "Sweater4", price: 4000),
                   Product(name: "Black Sweater", image: "Sweater5", price: 5000),
                   Product(name: "Pink Sweater", image: "Sweater6", price: 6000),
                   Product(name: "Green Sweater", image: "Sweater8", price: 7000),
                   Product(name: "Orange Sweater", image: "Sweater9", price: 8000),
                   Product(name: "Purple Sweater", image: "Sweater10", price: 9000),
                   
]
