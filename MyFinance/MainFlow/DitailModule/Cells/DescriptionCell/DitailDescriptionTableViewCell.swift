//
//  DitailDescriptionTableViewCell.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 13.09.2022.
//

import UIKit

class DitailDescriptionTableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK: - Properties
    
    var mainDescription = "" {
        didSet {
            descriptionLabel.text = mainDescription
        }
    }
    
    // MARK: - UITableViewCell

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureAppearance()
    }
    
    // MARK: - Private Methods
    
    func configureAppearance() {
        backgroundColor = Colors.mainBackgroundColor
        
        descriptionLabel.font = .systemFont(ofSize: 22, weight: .light)
        descriptionLabel.textColor = Colors.mainTextColor
        descriptionLabel.numberOfLines = 0
    }
}
