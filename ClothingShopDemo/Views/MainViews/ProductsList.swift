//
//  ProductsList.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-29.
//

import SwiftUI

struct ProductsList: View {
    @StateObject var productManager = ProductViewModel()
    @ObservedObject var cartManager: CartManager
    @State var selectedID = 0
    @State var presentSideMenu = false
    @State private var isCart = false
    @State private var sortByPrice = false
    @State private var searchText = ""
    
    var filteredProducts: [Product] {
        var filtered = productManager.products
        if !searchText.isEmpty {
            filtered = filtered.filter {
                $0.name.lowercased().contains(searchText.lowercased())
            }
        }
        if sortByPrice {
            filtered = filtered.sorted {
                $0.price > $1.price
            }
        }
        else {
            filtered = filtered.sorted {
                $0.price < $1.price
            }
        }
        return filtered
    }
    
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            ZStack {
//                ZStack {
                    Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ZStack {
                        VStack(spacing: 0) {
                            
                            HStack {
                                Text("Products")
                                    .font(tenorSans(24))
                                
                                Spacer()
                                
                                Text("Sort by Price")
                                    .font(tenorSans(16))
                                
                                if sortByPrice {
                                    Image(systemName: "arrow.up")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                        .padding(.horizontal)
                                        .onTapGesture {
                                            sortByPrice.toggle()
                                        }
                                    
                                }
                                else {
                                    Image(systemName: "arrow.down")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20)
                                        .padding(.horizontal)
                                        .onTapGesture {
                                            sortByPrice.toggle()
                                        }
                                }
                                
                            }
                            .padding(.horizontal)
                            .padding(.top)
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .padding(.leading)
                                TextField("Search", text: $searchText)
                                    .padding()
                            }.padding(.bottom)
                            
                            ScrollView(.vertical) {
//                                NavigationLink(destination: ItemView(product: productList[selectedID])) {
                                    VStack {
                                        ScrollView(.vertical) {
                                            LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                                                ForEach(filteredProducts, id: \._id) { product
                                                    in  /*ProductItemView(product: product)*/
                                                    NavigationLink(destination: ItemView(cartManager: cartManager, product: product)) {
                                                        ProductItemView(cartManager: cartManager, product: product)
                                                        
                                                    }
                                                    
                                                }
                                               
                                            }
                                        }
                                        .scrollIndicators(.hidden)
                                    }
                                    .padding([.leading, .trailing], 20)
//                                }
                                
                            }
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                        }
                        .padding(.top, 56)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .overlay(alignment: .top) {
                        HeaderView(cartManager: cartManager){
                            presentSideMenu.toggle()
                        }
                    }
                    
                    SideMenu()
    //                SideCart()
//                }
            }
        }
        .navigationBarHidden(isCart)
        

    }
    
    @ViewBuilder private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }

}

#Preview {
    ProductsList(cartManager: CartManager())
}
