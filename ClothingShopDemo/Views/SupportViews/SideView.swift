//
//  SideView.swift
//  ClothingShopDemo
//
//  Created by Maleesha Gunasekera on 2024-03-27.
//

import SwiftUI

struct SideView: View {
    @Binding var isShowing: Bool
    var content: AnyView
    var direction: Edge
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                
                content
                    .transition(.move(edge: direction))
                    .background(
                        Color.white
                    )
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowing)
    }
}

//#Preview {
//    SideView()
//}