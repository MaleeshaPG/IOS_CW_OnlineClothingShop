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
    var category: Categories
    var gender: GenderCategory
}

var productList = [Product(name: "Brown Sweater", image: "Sweater1", price: 300, category: .Sweaters, gender: .Female),
                   Product(name: "Black Sweater", image: "Sweater2", price: 350, category: .Sweaters, gender: .Female),
                   Product(name: "Pink Sweater", image: "Sweater3", price: 280, category: .Sweaters, gender: .Female),
                   Product(name: "Green Sweater", image: "Sweater4", price: 350, category: .Sweaters, gender: .Female),
                   Product(name: "Purple Sweater", image: "Sweater5", price: 400, category: .Sweaters, gender: .Male),
                   Product(name: "Purple Sweater", image: "Sweater6", price: 380, category: .Sweaters, gender: .Male),
                   Product(name: "Purple Sweater", image: "Sweater7", price: 380, category: .Sweaters, gender: .Male),
                   Product(name: "Purple Sweater", image: "Sweater8", price: 400, category: .Sweaters, gender: .Male),
                   Product(name: "White Casual", image: "Tshirt1", price: 280, category: .Tshrits, gender: .UniSex),
                   Product(name: "Pink Casual", image: "Tshirt2", price: 300, category: .Tshrits, gender: .UniSex),
                   Product(name: "Black Casual", image: "Tshirt3", price: 280, category: .Tshrits, gender: .UniSex),
                   Product(name: "White Cross Casual", image: "Tshirt4", price: 280, category: .Tshrits, gender: .UniSex),
                   Product(name: "Purple Jogger", image: "Jogger1", price: 400, category: .Joggers, gender: .UniSex),
                   Product(name: "Grey Jogger", image: "Jogger2", price: 420, category: .Joggers, gender: .UniSex),
                   Product(name: "Casual Jogger", image: "Jogger3", price: 400, category: .Joggers, gender: .UniSex),
                   Product(name: "White Jogger", image: "Jogger4", price: 420, category: .Joggers, gender: .UniSex),
]
