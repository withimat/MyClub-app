//
//  AnimalListItemView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: Animal
    var body: some View {
        HStack(alignment:.center, spacing:16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(
                RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment:.leading,spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing,8)
            }
            
            
        }
    }
}

#Preview {
    
    AnimalListItemView(animal: Animal(id: "protein tozu", name: "protein", headline: "acıklama blogu", description: "acıklama", link: "wkmdkdn", image: "protein-tozu", fact: ["1","2"]))
        
}
