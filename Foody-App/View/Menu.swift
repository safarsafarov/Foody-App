//
//  Menu.swift
//  Foody-App
//
//  Created by Safar Safarov on 2020/10/29.
//

import SwiftUI

struct Menu: View {
    @ObservedObject var homeData : HomeViewModel
    var body: some View {
        VStack {
            Button(action: {}, label: {
                HStack(spacing: 15){
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.pink)
                    Text("Cart")
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Spacer(minLength: 0)
                }
                padding()
            })
        }
        padding(10)
    }
    .frame(width: UIScreen.main.bounds.width / 1.6)
}
