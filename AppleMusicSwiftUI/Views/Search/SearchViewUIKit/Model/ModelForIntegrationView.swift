//
//  ModelForIntegrationView.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 24.04.2023.
//

import UIKit

class ModelIntegration {
    let image = [
        ModelSearch(image: UIImage(named: "chill2") ?? UIImage()),
        ModelSearch(image: UIImage(named: "classichip1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "hard1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "hiphop1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "rockrus1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "tech1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "rocklp1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "classicRock1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "dj1") ?? UIImage()),
        ModelSearch(image: UIImage(named: "audio1") ?? UIImage())
    ]
}

struct ModelSearch {
    let image: UIImage
}
