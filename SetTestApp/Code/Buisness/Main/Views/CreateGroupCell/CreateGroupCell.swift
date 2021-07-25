//
//  CreateGroupCell.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 26.07.2021.
//

import UIKit

protocol CreateGroupCellDelegate: class {
    func createGroupCellTapAdd(_ cell: CreateGroupCell)
}

final class CreateGroupCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    weak var delegate: CreateGroupCellDelegate?
    
    // MARK: - Life cycle
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Private
    
    @IBAction func addAction(_ sender: UIButton) {
        delegate?.createGroupCellTapAdd(self)
    }

}
