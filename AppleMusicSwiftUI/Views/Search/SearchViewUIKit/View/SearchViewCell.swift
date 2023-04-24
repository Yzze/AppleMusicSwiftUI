//
//  SearchViewCell.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 24.04.2023.
//

import UIKit

class SearchViewCell: UICollectionViewCell {
    
    let indentifier = String(describing: SearchViewCell.self)
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.layer.cornerRadius = 5
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupHierarchy() {
        addSubview(image)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 5),
            image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 5),
            image.topAnchor.constraint(equalTo: contentView.topAnchor),
            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
