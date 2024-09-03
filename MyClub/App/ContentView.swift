//
//  ContentView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 27.08.2024.
//

import SwiftUI

struct ContentView: View {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    var body: some View {
        
        NavigationView{
            List(){
                Group{
                    HStack{
                        Spacer()
                        HeadingView(headingImage: "", headingText: "VÜCUT DEĞİŞİMLERİ")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .padding(.vertical,8)
                            .foregroundColor(.white)
                        Spacer()
                    }
                    CoverImageView()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                }
                HStack{
                    Spacer()
                    HeadingView(headingImage: "", headingText: "Ürünler")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical,8)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                
                
                ForEach(animals){ animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)
                    }//:link
                    
                    
                }
            }//: List
            .navigationBarTitle("MY CLUB",displayMode: .large)
            
                
        }//:NAvi
    }
}

#Preview {
    ContentView()
}
