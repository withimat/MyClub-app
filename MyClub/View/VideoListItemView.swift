//
//  VideoListItem.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI

struct VideoListItemView: View {
    let video: VideoModel
    var body: some View {
        
        HStack(spacing:10) {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 110,height: 125)
                .cornerRadius(9)
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .shadow(radius: 6)
                }//: ZSTACK
            
            VStack(alignment:.leading,spacing: 10){
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//:VSTACK
            
            
        }//:HSTACK
        
    }
}

#Preview {
    VideoListItemView(video: VideoModel(id: "back", name: "Back Workout", headline: "African elephant with calf walking"))
}
/*
 
 {
   "id" : "elephant",
   "name" : "Elephant",
   "headline" : "African elephant with calf walking"
 }
 
 
 */
