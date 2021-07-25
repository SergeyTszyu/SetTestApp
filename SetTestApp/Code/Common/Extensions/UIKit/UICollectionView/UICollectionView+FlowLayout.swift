//
//  UICollectionView+FlowLayout.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 25.07.2021.
//

import UIKit

extension UICollectionView {

    var flowLayout: UICollectionViewFlowLayout? {
        return collectionViewLayout as? UICollectionViewFlowLayout
    }
}
