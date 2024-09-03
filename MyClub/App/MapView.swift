//
//  MapView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 27.08.2024.
//

import SwiftUI

struct MapView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        NavigationView{
            List(){
                
                ForEach(animals){ animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }//:link
                    
                    
                }
            }//: List
            .navigationBarTitle("Ürünler" ,displayMode: .large)
            
                
        }//:NAvi
    }
}

#Preview {
    MapView()
}
