//
//  AnimalDetailView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal : Animal
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false){
            VStack(alignment:.center,spacing: 20) {
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y:24)
                    )
                        
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                
                //galeri
    
                Spacer(minLength: 35)
                //FACT
                VStack(spacing:10){
                   HeadingView(headingImage: "questionmark.circle", headingText: "Bunları biliyor muydun?")
                    InsetFactView(animal: animal)
                        .frame(height: 150)
                        .background(.grirengi)
                        .cornerRadius(20)
                }
                .padding(.horizontal)
                .frame(height: 100)
                
                //DESC
                Spacer(minLength: 35)
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "\(animal.name) hakkında her şey")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding()
                
                
                //link
                
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Sipariş ve bilgi için")
                    
                    ExternalWebLinkView(animal: animal)
                }
                .padding(.horizontal)
                
                
            }
            .navigationBarTitle("\(animal.name) hakkında daha fazla bilgi",displayMode: .inline)
            
        } //: SCROLL
       
    }
}

#Preview {
    NavigationView{
        AnimalDetailView(animal: Animal(id: "l-karnitin", name: "L-Karnitin", headline: "L-Karnitin, yağ asitlerinin enerjiye dönüşümünü destekleyen bir amino asittir.", description: "L-Karnitin, yağ asitlerinin mitokondrilere taşınmasına yardımcı olarak enerji üretimini destekleyen bir amino asittir. \nBu, özellikle yağ yakımını artırmak ve egzersiz performansını iyileştirmek amacıyla kullanılır. L-Karnitin takviyeleri, genellikle sporcular ve kilo kontrolü yapmak isteyen kişiler tarafından kullanılır. \nAyrıca, enerji seviyelerini artırabilir ve fiziksel performansı destekleyebilir. L-Karnitin genellikle sıvı, kapsül veya toz formunda bulunur ve egzersiz öncesinde veya sonrasında alınabilir.", link: "https://tr.wikipedia.org/wiki/L-Karnitin", image: "karnitin", fact: [
            "L-Karnitin, yağ asitlerinin enerjiye dönüşümünü destekler.",
            "Yağ yakımını artırabilir ve egzersiz performansını iyileştirebilir.",
            "Enerji seviyelerini artırabilir ve fiziksel performansı destekleyebilir.",
            "Genellikle egzersiz öncesi veya sonrası alınır."
          ]))
    }
    
}
