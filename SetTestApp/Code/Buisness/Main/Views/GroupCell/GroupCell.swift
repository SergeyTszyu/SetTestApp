//
//  GroupCell.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 25.07.2021.
//

import UIKit

final class GroupCell: UICollectionViewCell {
    
    // MARK: -
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var titleLabel: UILabel!
    
    // MARK: -

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageView.image = nil
        nameLabel.text = nil
        titleLabel.text = nil
    }
}

// MARK: - Public

extension GroupCell {
    
    func fill(_ group: Group) {
        imageView.image = group.image
        nameLabel.text = group.name
        titleLabel.text = group.title
    }
}
