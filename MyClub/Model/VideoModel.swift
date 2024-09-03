//
//  VideoModel.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import Foundation
import SwiftUI

struct VideoModel:Codable,Identifiable{
    let id: String
    let name: String
    let headline: String
    
    
    
    //computed property
    var thumbnail:String{
        "\(id)-cover"
    }
}
