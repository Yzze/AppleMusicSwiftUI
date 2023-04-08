//
//  ModelForRadioStationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 08.04.2023.
//

import Foundation

class ModelRadioView {
    var models = [
        Model(top: "Избранная радиостанция",
              middle: "Легкий поп",
              bottom: "Станция Apple Music",
              image: "pop1"),
        Model(top: "Избранная радиостанция",
              middle: "Хиты",
              bottom: "Станция Apple Music",
              image: "hits"),
        Model(top: "Избранная радиостанция",
              middle: "Хип-хоп",
              bottom: "Станция Apple Music",
              image: "hiphop"),
        Model(top: "Избранная радиостанция",
              middle: "Классика рока",
              bottom: "Станция Apple Music",
              image: "rock")
    ]
}

struct Model: Identifiable {
    var id = UUID()
    let top: String
    let middle: String
    let bottom: String
    let image: String
}
