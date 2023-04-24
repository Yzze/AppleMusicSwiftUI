//
//  SearchViewRepresentable.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 24.04.2023.
//

import UIKit
import SwiftUI

struct SearchViewRepresentable: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SearchViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}
