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
    
    // Location details....
    @Published var userLocation : CLLocation!
    @Published var userAddress = ""
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        // Checking location Acccess...
        
        switch manager.authorizationStatus {
        case .authorizedWhenInUse:
            print("authorized")
        case .denied:
            print("denied")
        default:
            // Direct Call
            print("unknown")
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error){
        print(error)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        /// reading user location and extracting details
        self.userLocation = locations.last
    }
    
}
