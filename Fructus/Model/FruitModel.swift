//
//  FruitModel.swift
//  Fructus
//
//  Created by Fillipi Paiva Suszek on 13/01/21.
//

import SwiftUI

//MARK: - Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
    
}
