//
//  AddGroupViewController.swift
//  SetTestApp
//
//  Created by Sergey Tszyu on 26.07.2021.
//

import UIKit

protocol AddGroupViewControllerDelegate: class {
    func addGroupViewControllerAddTapped(_ controller: AddGroupViewController)
}

final class AddGroupViewController: UIViewController {
    
    // MARK: - @IBOutlets
    
    @IBOutlet private weak var selectedImageView: UIImageView!
    
    // MARK: - Properties
    
    weak var delegate: AddGroupViewControllerDelegate?
    
    fileprivate var images: [UIImage] = {
        return [R.image.firstImage()!, R.image.secondImage()!]
    }()
    fileprivate var currentIndex = 0
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectedImageView.image = images.first
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        UIView.animate(withDuration: 0.3) {
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        }
    }
}


// MARK: - Private

private extension AddGroupViewController {
    
    @IBAction func addAction(_ sender: UIButton) {
        delegate?.addGroupViewControllerAddTapped(self)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func rightAction(_ sender: UIButton) {
        currentIndex += 1
        selectedImageView.image = nextImage()
    }
    
    @IBAction func leftAction(_ sender: UIButton) {
        currentIndex -= 1
        selectedImageView.image = nextImage()
    }
    
    func nextImage() -> UIImage {
        
        if currentIndex >= images.count {
            currentIndex = 0
            return images.first!
        } else if currentIndex < 0 {
            currentIndex = images.count - 1
            return images.last!
        } else {
            let image = images[currentIndex]
            return image
        }
    }
}
