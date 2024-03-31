//
//  ProductViewModel.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-31.
//

//import Foundation
//
//class ProductViewModel: ObservableObject {
//    
//    @Published var products = [Product]()
//    
//    init() {
//        self.fetchProducts()
//    }
//     
//    func fetchProducts() {
//        guard let url = URL(string: "http://localhost:3000/api/products") else {
//            print("Invalid URL")
//            return
//        }
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data = data, error == nil else {
//                print("Error fetching products: \(error?.localizedDescription ?? "Unknown error")")
//                return
//            }
//            
//            let decoder = JSONDecoder()
//            do {
//                let fetchedProducts = try decoder.decode([Product].self, from: data)
//                DispatchQueue.main.async {
//                    self.products = fetchedProducts
//                }
//            } catch {
//                print("Error decoding JSON: \(error)")
//            }
//        }.resume()
//    }
//}

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var products = [Product]()
    
    init() {
        self.fetchProducts()
    }
     
    func fetchProducts() {
        guard let url = URL(string: "http://localhost:3000/api/products") else {
            print("Invalid URL")
            return
        }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                print("Error fetching products: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            // Print the received data for debugging
            if let dataString = String(data: data, encoding: .utf8) {
                print("Received data: \(dataString)")
            }
            
            let decoder = JSONDecoder()
            do {
                let fetchedProducts = try decoder.decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.products = fetchedProducts
                }
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
