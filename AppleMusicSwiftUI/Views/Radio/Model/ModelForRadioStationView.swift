//
//  ModelForRadioStationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 08.04.2023.
//

import Foundation

class ModelRadioView: ObservableObject {
    var models = [
        ModelForStation(top: "Избранная радиостанция",
              middle: "Легкий поп",
              bottom: "Станция Apple Music",
              image: "pop1"),
        ModelForStation(top: "Избранная радиостанция",
              middle: "Хиты",
              bottom: "Станция Apple Music",
              image: "hits"),
        ModelForStation(top: "Избранная радиостанция",
              middle: "Хип-хоп",
              bottom: "Станция Apple Music",
              image: "hiphop"),
        ModelForStation(top: "Избранная радиостанция",
              middle: "Классика рока",
              bottom: "Станция Apple Music",
              image: "rock")
    ]
}

struct ModelForStation: Identifiable {
    let id = UUID()
    let top: String
    let middle: String
    let bottom: String
    let image: String
}
