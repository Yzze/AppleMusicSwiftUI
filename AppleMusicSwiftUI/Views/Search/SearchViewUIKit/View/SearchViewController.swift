//
//  SearchViewController.swift
//  AppleMusicSwiftUI
//
//  Created by Ян Жигурс on 24.04.2023.
//

import UIKit

class SearchViewController: UIViewController, UICollectionViewDelegate {
    
    private let model = ModelIntegration().image
    
    private lazy var collection: UICollectionView = {
        let collection = UICollectionView(frame: view.frame, collectionViewLayout: UICollectionViewFlowLayout())
        collection.register(SearchHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SearchHeader.identifier)
        collection.register(SearchViewCell.self, forCellWithReuseIdentifier: SearchViewCell().indentifier)
        collection.dataSource = self
        collection.delegate = self
        collection.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collection.collectionViewLayout = createCompositionalLayout()
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
    }
    
    func setupHierarchy() {
        view.addSubview(collection)
    }
    
    private func createCompositionalLayout() -> UICollectionViewCompositionalLayout {
            
            let layout = UICollectionViewCompositionalLayout{(sectionIndex: Int, layoutEnviroment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
                self.createCompositionalLayoutSearchView()
            }
            return layout
        }
        
        private func createCompositionalLayoutSearchView() -> NSCollectionLayoutSection {
            
            let headerSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .absolute(30))
            let sectionHeader = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top)
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = NSDirectionalEdgeInsets(
                top: 15,
                leading: -5,
                bottom: 15,
                trailing: 0)
            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(1),
                heightDimension: .fractionalHeight(0.27))
            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                subitem: item,
                count: 2)
            let section = NSCollectionLayoutSection(group: group)
            section.boundarySupplementaryItems = [sectionHeader]
            return section
        }
}

extension SearchViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        model.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collection.dequeueReusableCell(withReuseIdentifier: SearchViewCell().indentifier, for: indexPath) as? SearchViewCell else { return UICollectionViewCell() }
        cell.image.image = model[indexPath.row].image
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collection.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SearchHeader.identifier, for: indexPath) as? SearchHeader else { return UICollectionReusableView() }
        return header
    }
}
