//
//  InsetMapView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.8050961, longitude: 34.5463091), span: MKCoordinateSpan(latitudeDelta: 0.15, longitudeDelta: 0.15))

    let location: [Lokasyonlar] = Bundle.main.decode("locations.json")
    var body: some View {
        Map(coordinateRegion: $region,annotationItems: location,annotationContent: { item in
            MapPin(coordinate: item.location,tint: .accentColor)
        })
            .frame(height: 256)
            .cornerRadius(12)
        
    }
}

#Preview {
    InsetMapView()
}
