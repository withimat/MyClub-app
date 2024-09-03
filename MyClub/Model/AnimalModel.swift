//
//  AnimalModel.swift
//  MyClub
//
//  Created by İmat Gökaslan on 28.08.2024.
//

import Foundation
import SwiftUI

struct Animal: Codable,Identifiable{
    let id : String
    let name: String
    let headline : String
    let description: String
    let link: String
    let image: String
    let fact : [String]
}
