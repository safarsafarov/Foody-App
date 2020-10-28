//
//  Home.swift
//  Foody-App
//
//  Created by Safar Safarov on 2020/10/28.
//

import SwiftUI


struct Home: View {
    @StateObject var HomeModel = HomeViewModel()
    var body: some View {
        VStack(spacing: 10) {
            HStack(spacing: 15) {
                Button(action: {} , label: {
                    Image(systemName: "line.horizontal.3")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.orange)
                })
                
                Text("Deliver To")
                    .foregroundColor(.black)
                Text("Apple")
                    .font(.caption) 
                    .fontWeight(.heavy)
                    .foregroundColor(.orange)
                Spacer(minLength: 0)
            }
            .padding([.horizontal,.top])
            
            Divider()

            HStack(spacing: 15) {
                TextField("Search", text: $HomeModel.search)
                
                if HomeModel.search != ""{
                    Button(action: {}, label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(.gray)
                    })
                    .animation(.easeIn)
                }
            }
            .padding(.horizontal)
            .padding(.top,10)
            
            Divider()
            
            Spacer()
        }
        .onAppear(perform: {
            // Calling location delegate...
            HomeModel.locationManager.delegate = HomeModel
            HomeModel.locationManager.requestWhenInUseAuthorization()
        })
    }
}
