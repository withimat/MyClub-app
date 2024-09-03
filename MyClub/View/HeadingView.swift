//
//  HeadingView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI

struct HeadingView: View {
    var headingImage : String
    var headingText: String
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
                
        }
    }
}

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "wilderness in Pictures")
}
