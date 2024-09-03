//
//  CoverImageView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    //MARK: - BODY
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    
                
            }//: Loop
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        
    }
}
//MARK: - PREVIEW
#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}


