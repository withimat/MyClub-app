//
//  LocationModel.swift
//  MyClub
//
//  Created by İmat Gökaslan on 29.08.2024.
//

import Foundation
import MapKit


struct Lokasyonlar: Codable,Identifiable{
    var id: String
    var name: String
    var image: String
    var latitude:Double
    var longitude : Double

    
//    computed propert
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
