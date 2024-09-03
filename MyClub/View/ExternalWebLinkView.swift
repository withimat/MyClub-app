//
//  ExternalWebLinkView.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: Animal
    var body: some View {
        GroupBox {
            HStack {
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link("bilgi almak için tıkla", destination: (URL(string: "https://www.livestrong.com/") ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
                Spacer()
                Group{
                    Image(systemName: "basket.fill")
                    Link("siparis için tıkla", destination: (URL(string:animal.link) ?? URL(string: "https://api.whatsapp.com/send/?phone=905075201706&text&type=phone_number&app_absent=0"))!)
                }
                .foregroundColor(.accentColor)
            } //:hstack
        } //:box
    
        
    }
    func composeMessage() -> String {
            return """
             Bilgi almak istiyorum
             """
        }
        func sendWhatsAppMessage(message: String) {
            let urlString = "whatsapp://send?text=\(message.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")"
            if let url = URL(string: urlString) {
                UIApplication.shared.open(url)
            }
            
        }
    
    
}

#Preview {
    ExternalWebLinkView(
        animal: Animal(id: "l-karnitin", name: "L-Karnitin", headline: "L-Karnitin, yağ asitlerinin enerjiye dönüşümünü destekleyen bir amino asittir.", description: "L-Karnitin, yağ asitlerinin mitokondrilere taşınmasına yardımcı olarak enerji üretimini destekleyen bir amino asittir. \nBu, özellikle yağ yakımını artırmak ve egzersiz performansını iyileştirmek amacıyla kullanılır. L-Karnitin takviyeleri, genellikle sporcular ve kilo kontrolü yapmak isteyen kişiler tarafından kullanılır. \nAyrıca, enerji seviyelerini artırabilir ve fiziksel performansı destekleyebilir. L-Karnitin genellikle sıvı, kapsül veya toz formunda bulunur ve egzersiz öncesinde veya sonrasında alınabilir.", link: "https://tr.wikipedia.org/wiki/L-Karnitin", image: "karnitin", fact: [
            "L-Karnitin, yağ asitlerinin enerjiye dönüşümünü destekler.",
            "Yağ yakımını artırabilir ve egzersiz performansını iyileştirebilir.",
            "Enerji seviyelerini artırabilir ve fiziksel performansı destekleyebilir.",
            "Genellikle egzersiz öncesi veya sonrası alınır."
          ]))
}
