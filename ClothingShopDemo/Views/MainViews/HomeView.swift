//
//  HomeView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-24.
//

import SwiftUI

struct HomeView: View {
    
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    private var categories = [Categories.All.rawValue, Categories.Tshrits.rawValue, Categories.Joggers.rawValue, Categories.Sweaters.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                ZStack {
                    VStack(spacing: 0) {
                        ScrollView(.vertical) {
                            HomePageImageView()
                            NewArraivalView()
                            Spacer()
                        }
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.top, 30)
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
    @ViewBuilder private func HomePageImageView() -> some View {
            ZStack {
                Image("HomePage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .frame(height: 620)
                
                NavigationLink(destination: ProductsList()){
                    Text("Explore Collection")
                        .font(Font.custom("Tenor Sans", size: 25))
                        .foregroundColor(.white)
                        .frame(width: 300, height: 60)
                        .background(Color.black)
                        .cornerRadius(100)
                        .padding(.top, 480)
                }

            }
        
    }
    
    @ViewBuilder private func NewArraivalView() -> some View {
        Text ("New Arrivals")
            .font(Font.custom("Tenor Sans", size: 35))
            .multilineTextAlignment(.center)
            .frame(width: 225, height: 42, alignment: .top)
            .padding(.top, 10)
   
        
        VStack {
            HStack(spacing: 20) {
                ForEach(0..<categories.count, id: \.self) { i in
                    CategoryView(isSelected: i == selectedCategory, title: categories[i])
                        .onTapGesture {
                            selectedCategory = i
                        }
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            
            HStack {
                ProductItemView(product: productList[1])
                ProductItemView(product: productList[2])
            }
            
            Button {
                
            }label: {
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 8) {
                    Text("Explore More")
                        .font(tenorSans(20))
                        .multilineTextAlignment(.center)
                    
                    Image(systemName: "arrow.forward")
                        .frame(width: 18, height: 18)
                }
            }
        }
    }
    
    
    @ViewBuilder private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
    
//    @ViewBuilder private func SideCart() -> some View {
//        SideView(isShowing: $presentSideCart, content: AnyView(SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
//    }
}

#Preview {
    HomeView()
}
