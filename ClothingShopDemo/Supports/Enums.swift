//
//  Enums.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-26.
//

import Foundation

enum Categories: String, Codable {
    case All = "All"
    case Tshrits = "Tshirts"
    case Joggers = "Joggers"
    case Sweaters = "Sweaters"
}

enum GenderCategory: String, Codable {
    case UniSex = "All"
    case Male = "MEN"
    case Female = "WOMEN"
}
