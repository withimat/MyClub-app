//
//  GalleryView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 27.08.2024.
//

import SwiftUI

struct GalleryView: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing:10){
                HStack{
                    HeadingView(headingImage: "location", headingText: "Lokasyon").font(.title)
                    Spacer()
                }.padding()
                InsetMapView()
                Spacer()
                VStack(spacing:5){
                    HStack {
                        Group{
                            HeadingView(headingImage: "bubble.left.and.text.bubble.right", headingText: "İletişim").font(.title)
                        }
                        Spacer()
                    }.padding()
                    
                    HStack(spacing:10) {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.accentColor)
                        Text("05380354884")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        Spacer()
                    }.padding()
                    
                    HStack(spacing:10){
                        Image(systemName: "mail").foregroundColor(.accentColor)
                        Text("myclub.com")
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                        Spacer()
                    }.padding()
                    
                    
                }
                
                
                
                Spacer()
            }.navigationBarTitle("MY CLUB")
            Spacer()
        
            
        }
    }
}

#Preview {
    GalleryView()
}
