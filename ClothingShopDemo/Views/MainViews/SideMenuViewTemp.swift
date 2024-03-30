//
//  SideMenuViewTemp.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-27.
//

import SwiftUI

struct SideMenuViewTemp: View {
    @State var presentSideMenu = true
    var body: some View {
        ZStack {
            SideMenuView()
        }
        .background(.black)
    }
    
    @ViewBuilder
    private func SideMenuView() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
}

#Preview {
    SideMenuViewTemp()
}

struct SideMenuViewContents: View {
    @Binding var presentSideMenu: Bool
    
    var categories = [Categories.All.rawValue,
                      Categories.Tshrits.rawValue,
                      Categories.Joggers.rawValue,
                      Categories.Sweaters.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    var body: some View {
        HStack {
            ZStack {
                VStack (alignment: .leading) {
                    SideMenuTopView()
                    HStack(spacing: 10) {
                        GenderView(isSelected: selectedCategory == 0, title: "WOMEN")
                            .onTapGesture {
                                selectedCategory = 0
                            }
                        GenderView(isSelected: selectedCategory == 1, title: "MEN")
                            .onTapGesture {
                                selectedCategory = 1
                            }
                        GenderView(isSelected: selectedCategory == 2, title: "UNISEX")
                            .onTapGesture {
                                selectedCategory = 2
                            }
                    }
                    .frame(maxWidth: .infinity)
                    
                    ForEach(0..<categories.count, id: \.self) {
                        i in CategoryItem(title: categories[i]) {
                            
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    }label: {
                        HStack {
                            Image(systemName: "phone")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height:  24)
                            
                            Text("+94 077 XXX-9900")
                                .font(tenorSans(16))
                        }
                        .padding(.leading, 30)
                        .padding(.top, 20)
                    }
                    
                    Button {
                        
                    }label: {
                        HStack {
                            Image(systemName: "location")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height:  24)
                            
                            Text("Store Locator")
                                .font(tenorSans(16))
                        }
                        .padding(.leading, 30)
                        .padding(.top, 20)
                    }
                
                    HStack(spacing: 30) {
                        Spacer()
                        Image("twitter")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                        Image("facebook")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        
                        Image("instagram")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                        Spacer()
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                }
            }
            .frame(maxWidth: .infinity)
        }
        .padding([.leading, .trailing], 20)
    }
    
    func SideMenuTopView() -> some View {
        VStack {
            HStack {
                
                Button {
                    presentSideMenu.toggle()
                }label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .frame(width: 24, height: 24)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.leading, 10)
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
    
    func CategoryItem(title: String, action: @escaping (() -> Void)) -> some View {
        Button {
            action()
        }label: {
            VStack(alignment: .leading) {
                Text(title)
                    .font(tenorSans(16))
                    .foregroundStyle(.gray)
            }
        }
        .frame(height: 50)
        .padding(.leading, 30)
        .padding(.top, 10)
    }
    
}
