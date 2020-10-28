//
//  HomeViewModel.swift
//  Foody-App
//
//  Created by Safar Safarov on 2020/10/28.
//

import SwiftUI
import CoreLocation

class HomeViewModel: NSObject,ObservableObject,CLLocationManagerDelegate{
    @Published var locationManager = CLLocationManager()
    @Published var search = ""
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        // Checking location Acccess...
        
        switch manager.authorizationStatus {
        case .authorizedWhenInUse:
            print("authorized")
        case .denied:
            print("denied")
        default:
            print("unknown")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
        print(error)
    }
    
}
