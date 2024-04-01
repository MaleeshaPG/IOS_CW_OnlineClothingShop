//
//  Product.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-22.
//

import Foundation
struct Product: Codable {
    var _id : String
    var name: String
    var img_path: String
    var price: Double
    var category: String
    var gender: String
}

enum CodingKeys: String, CodingKey {
        case _id
        case name
        case image = "img_path"
        case price
        case category
        case gender
    }


var productList = [Product(_id: "A", name: "Brown Sweater", img_path: "Sweater1", price: 15, category: "Sweaters", gender: "Female"),
                   Product(_id: "B", name: "Black Sweater", img_path: "Sweater2", price: 16, category: "Sweaters", gender: "Female"),
                   Product(_id: "C", name: "Pink Sweater", img_path: "Sweater3", price: 12, category: "Sweaters", gender: "Female"),
                   Product(_id: "D", name: "Green Sweater", img_path: "Sweater4", price: 16, category: "Sweaters", gender: "Female"),
                   Product(_id: "E", name: "Blue Sweater", img_path: "Sweater5", price: 20, category: "Sweaters", gender: "Male"),
                   Product(_id: "F", name: "Classic Sweater", img_path: "Sweater6", price: 18, category: "Sweaters", gender: "Male"),
                   Product(_id: "G", name: "Classic Blue Sweater", img_path: "Sweater7", price: 18, category: "Sweaters", gender: "Male"),
                   Product(_id: "H", name: "Black Sweater", img_path: "Sweater8", price: 20, category: "Sweaters", gender: "Male"),
                   Product(_id: "I", name: "White Casual", img_path: "Tshirt1", price: 12, category: "Tshirt", gender: "Unisex"),
                   Product(_id: "J", name: "Pink Casual", img_path: "Tshirt2", price: 15, category: "Tshirt", gender: "Unisex"),
                   Product(_id: "K", name: "Black Casual", img_path: "Tshirt3", price: 12, category: "Tshirt", gender: "Unisex"),
                   Product(_id: "L", name: "White Cross Casual", img_path: "Tshirt4", price: 12, category: "Tshirt", gender: "Unisex"),
                   Product(_id: "M", name: "Purple Jogger", img_path: "Jogger1", price: 20, category: "Joggers", gender: "Unisex"),
                   Product(_id: "N", name: "Gray Jogger", img_path: "Jogger2", price: 22, category: "Joggers", gender: "Unisex"),
                   Product(_id: "O", name: "Casual Jogger", img_path: "Jogger3", price: 20, category: "Joggers", gender: "Unisex"),
                   Product(_id: "P", name: "White Jogger", img_path: "Jogger4", price: 22, category: "Joggers", gender: "Unisex"),
]
