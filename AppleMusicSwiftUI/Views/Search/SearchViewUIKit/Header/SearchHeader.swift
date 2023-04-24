//
//  SearchHeader.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 24.04.2023.
//

import UIKit

class SearchHeader: UICollectionReusableView {
    
    static let identifier = String(describing: SearchHeader.self)
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Поиск по категориям"
        label.font = .systemFont(ofSize: 22, weight: .bold)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupHierarchy() {
        addSubview(label)
    }
    
    private func setupLayout() {
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 5),
            label.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 1)
        ])
    }
}
