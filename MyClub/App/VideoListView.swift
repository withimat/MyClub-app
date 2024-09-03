//
//  VideoListView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 27.08.2024.
//

import SwiftUI

struct VideoListView: View {
    @State var videos: [VideoModel] = Bundle.main.decode("videos1.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical,8)
                    }
                }
            }//:list
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videolar",displayMode: .inline)
            .toolbar(){
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }, label: {
                        Image(systemName: "arrow.2.squarepath")
                        
                    })
                }
            }
            
            
        }//navi
    }
}

#Preview {
    VideoListView()
}
