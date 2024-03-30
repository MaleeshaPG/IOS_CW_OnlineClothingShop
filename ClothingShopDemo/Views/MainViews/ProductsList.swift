//
//  ProductsList.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-29.
//

import SwiftUI

struct ProductsList: View {
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            ZStack {
                ZStack {
                    Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    ZStack {
                        VStack(spacing: 0) {
                            HStack {
                                Text("Products")
                                    .font(tenorSans(24))
                                
                                Spacer()
                            }
                            .padding()
                            
                            ScrollView(.vertical) {
                                NavigationLink(destination: ItemView(product: productList[0])) {
                                    VStack {
                                        ScrollView(.vertical) {
                                            LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                                                ForEach(productList, id: \.id) { product
                                                    in  ProductItemView(product: product)
                                                }
                                               
                                            }
                                        }
                                        .scrollIndicators(.hidden)
                                    }
                                    .padding([.leading, .trailing], 20)
                                }
                                
                            }
                            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                        }
                        .padding(.top, 56)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .overlay(alignment: .top) {
                        HeaderView{
                            presentSideMenu.toggle()
                        }
                    }
                    
                    SideMenu()
    //                SideCart()
                }
            }
        }
//        .navigationBarHidden(true)

    }
    
    @ViewBuilder private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
    
//    @ViewBuilder private func SideCart() -> some View {
//        SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideMenu)), direction: .trailing)
//    }
}

#Preview {
    ProductsList()
}
