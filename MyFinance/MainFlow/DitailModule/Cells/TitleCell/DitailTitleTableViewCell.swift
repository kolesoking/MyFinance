//
//  DitailTitleTableViewCell.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 13.09.2022.
//

import UIKit

class DitailTitleTableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    @IBOutlet weak var currencyImage: UIImageView!
    @IBOutlet weak var moneyLabel: UILabel!
    
    // MARK: - Properties
    
    var currencyImageString = Icons.ruble {
        didSet {
            currencyImage.image = UIImage(named: currencyImageString)
        }
    }
    
    var money = "0" {
        didSet {
            moneyLabel.text = money
        }
    }
    
    // MARK: - UITableView

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureAppearance()
    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
     // MARK: - Private Methods
    
    func configureAppearance() {
        
        backgroundColor = Colors.mainBackgroundColor
        
        currencyImage.contentMode = .scaleAspectFill
        
        moneyLabel.font = .systemFont(ofSize: 34, weight: .light)
        moneyLabel.textColor = Colors.mainTextColor
    }
}
