//
//  ActionCollectionViewCell.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 12.09.2022.
//

import UIKit

class ActionCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Views
    
    @IBOutlet weak var mainImage: UIImageView!
    
    // MARK: - Properties
    
    var imageString = "" {
        didSet {
            mainImage.image = UIImage(named: imageString)
        }
    }
    
    // MARK: - UICollectionViewCell

    override func awakeFromNib() {
        super.awakeFromNib()
        configureAppearance()
    }
    
    // MARK: - Private Methods
    
    private func configureAppearance() {
        mainImage.contentMode = .scaleAspectFill
    }

}
