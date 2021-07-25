//
//  MainViewController.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 25.07.2021.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - @IBOutlets
    
    @IBOutlet var collectionView: UICollectionView!
    
    // MARK: - Properties
    
    fileprivate var groups: [Group] = {
        let groupsFactory = GroupsFactory()
        return groupsFactory.groups()
    }()
    
    fileprivate var numberOfColums = 2
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

// MARK: - Private

private extension MainViewController {
    
    func configure() {
        collectionView.register(R.nib.groupCell)
        collectionView.register(R.nib.createGroupCell)
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 20.0, bottom: 0.0, right: 20.0)
        layout.minimumLineSpacing = 20
        layout.minimumInteritemSpacing = 20
        collectionView.setCollectionViewLayout(layout, animated: true)
    }
}

// MARK: - UICollectionViewDataSource

extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groups.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.item {
        case 0:
            let createGroupCell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.createGroupCell, for: indexPath)!
            createGroupCell.delegate = self
            return createGroupCell
        default:
            let groupCell = collectionView.dequeueReusableCell(withReuseIdentifier: R.reuseIdentifier.groupCell, for: indexPath)!
            let group = groups[indexPath.item - 1]
            groupCell.fill(group)
            return groupCell
        }
    }
}

// MARK: - UICollectionViewDelegateFlowLayout

extension MainViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        guard let flowLayout = collectionView.flowLayout else {
            return .zero
        }
        
        let insetsValue = flowLayout.sectionInset.left + flowLayout.sectionInset.right
        let spacingValue = flowLayout.minimumInteritemSpacing * CGFloat(numberOfColums - 1)
        
        let itemWidth = floor((collectionView.bounds.width - insetsValue - spacingValue) / CGFloat(numberOfColums))
        
        return CGSize(width: itemWidth, height: itemWidth)
    }
}

// MARK: - CreateGroupCellDelegate

extension MainViewController: CreateGroupCellDelegate {
    
    func createGroupCellTapAdd(_ cell: CreateGroupCell) {
        
    }
}
