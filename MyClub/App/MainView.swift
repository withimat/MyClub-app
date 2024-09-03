//
//  MainView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 27.08.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Anasayfa")
                }
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("videolar")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "cart.circle")
                    Text("Ürünler")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "phone.bubble.fill")
                    Text("İletişim")
                    
                }
            
            
        }//: TABVIEW
    }
}

#Preview {
    MainView()
}
