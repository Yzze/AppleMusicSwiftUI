//
//  ModelStationGenreView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 08.04.2023.
//

import Foundation

class ModelGenreStation: ObservableObject {
    var models = [
        ModelForGenre(image: "chil",
                      title: "Чилаут",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "classichip",
                      title: "Классика хип-хопа",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "hard",
                      title: "Хард-рок",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "hits1",
                      title: "Хиты",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "rockrus",
                      title: "Рок на русском",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "tech",
                      title: "Техно",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "audio",
                      title: "Пространственное аудио",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "charts",
                      title: "Чарты",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "classicRock",
                      title: "Классический рок",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "dj",
                      title: "DJ-миксы",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "main",
                      title: "Главное",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "relax",
                      title: "Спокойствие",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "rocklp",
                      title: "Рок",
                      footer: "Станция Apple Music"),
        ModelForGenre(image: "sport",
                      title: "Спорт",
                      footer: "Станция Apple Music")
    ]
}

struct ModelForGenre: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let footer: String
}
