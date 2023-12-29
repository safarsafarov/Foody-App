//
//  ContentView.swift
//  Food App
//
//  Created by Balaji on 26/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView{
            
            Home()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
