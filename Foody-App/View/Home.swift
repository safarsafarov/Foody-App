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
        ZStack{
            VStack(spacing: 10) {
                HStack(spacing: 15) {
                    Button(action: {} , label: {
                        Image(systemName: "line.horizontal.3")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.orange)
                    })
                    
                    Text(HomeModel.userLocation == nil ? "Locating..." : "Deliver To")
                        .foregroundColor(.black)
                    Text(HomeModel.userAddress)
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
            
            // Non CLosable Alert If Permission Denied...
            
            if HomeModel.noLocation {
                Text("Please Enable Location In Settings To further Move On!!!")
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width - 100, height: 120)
                    .background(Color.white)
                    .cornerRadius(10)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.3).ignoresSafeArea())
            }
        }
        .onAppear(perform: {
            // Calling location delegate...
            HomeModel.locationManager.delegate = HomeModel
           
        })
    }
}
