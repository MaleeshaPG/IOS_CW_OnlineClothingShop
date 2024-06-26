//
//  ItemView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-29.
//

import SwiftUI

struct ItemView: View {
    
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    @ObservedObject var cartManager: CartManager
    
    var product: Product
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            ZStack {
                ScrollView {
                    ZStack {
                        Color.white
                        
                        VStack(alignment: .leading) {
                            ZStack(alignment: .bottomTrailing) {
                                Image(product.img_path)
                                    .resizable()
                                    .ignoresSafeArea(edges: .top)
                                    .frame(width: 400 ,height: 600)
                                
                                
                                Spacer()
                                
                                Text("Add to cart")
                                    .font(Font.custom("Tenor Sans", size: 18))
                                    .padding(20)
                                    .frame(width: 400, height: 40)
                                    .foregroundColor(.white)
                                    .background(.black)
                                    .cornerRadius(50)
                                    .onTapGesture {
                                        cartManager.addToCart(product: product)
                                    }
                                
                            }
//                            VStack(alignment: .leading) {
                                HStack {
                                    Text(product.name)
                                        .font(tenorSans(25).bold())
                                    
                                    Spacer()
                                    
                                    Text("$\(product.price)")
                                        .font(tenorSans(25))
                                        .fontWeight(.bold)
                                        .padding(.horizontal)
                                   
                                }
                                .padding(.vertical)
                                
                                Text("Size:")
                                    .font(tenorSans(20).bold())
                                    .padding(.horizontal)
                                
                                HStack {
                                    Text("XS")
                                        .font(tenorSans(15))
                                        .foregroundColor(.white)
                                        .frame(width: 60, height: 50)
                                        .background(Color.black)
                                        .cornerRadius(25)
//                                        .padding(.horizontal)
                                    
                                    Text("S")
                                        .font(tenorSans(18))
                                        .foregroundColor(.white)
                                        .frame(width: 60, height: 50)
                                        .background(Color.black)
                                        .cornerRadius(25)
                                    
                                    Text("M")
                                        .font(tenorSans(18))
                                        .foregroundColor(.white)
                                        .frame(width: 60, height: 50)
                                        .background(Color.black)
                                        .cornerRadius(25)
                                    
                                    Text("L")
                                        .font(tenorSans(18))
                                        .foregroundColor(.white)
                                        .frame(width: 60, height: 50)
                                        .background(Color.black)
                                        .cornerRadius(25)
                                    
                                    Text("XL")
                                        .font(tenorSans(18))
                                        .foregroundColor(.white)
                                        .frame(width: 60, height: 50)
                                        .background(Color.black)
                                        .cornerRadius(25)
                                }
                                
//                            }
                        }
                    }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .overlay(alignment: .top) {
                HeaderView(cartManager: cartManager){
                    presentSideMenu.toggle()
                }
            }
            
            SideMenu()
//            SideCart()
        }
        .navigationBarHidden(true)
    }
    
    
    @ViewBuilder private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
    
//    @ViewBuilder private func SideCart() -> some View {
//        SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
//    }
    
}

#Preview {
    ItemView(cartManager: CartManager(), product: productList[0])
}
