//
//  VideoPlayerView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 29.08.2024.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    var videoSelected : String
    var videoTitle: String
    
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat:  "mp4")){
                //Text(videoTitle)
            }
            .overlay(
            Image("cover-1")
                .resizable()
                .scaledToFit()
                .frame(width: 40,height: 34)
                .padding(.top,6)
                .padding(.horizontal,8)
            ,
            alignment: .topLeading
            )
        }//:VSTACK
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode:.inline)
        
    }
}

#Preview {
    VideoPlayerView(videoSelected: "chest", videoTitle: "chest Workout")
    
}
