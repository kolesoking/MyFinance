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
    @IBOutlet weak var typeOfOperationLabel: UILabel!
    
    // MARK: - Calculated
    
    var operationType: String? {
        return isReseiving ? "Cтрижка" : "Покупка"
    }
    
    // MARK: - Properties
    
    var currencyImageString: String = Icons.ruble {
        didSet {
            currencyImage.image = UIImage(named: currencyImageString)
        }
    }
    
    var money = "0" {
        didSet {
            moneyLabel.text = money
        }
    }
    
    var isReseiving: Bool = true
    
    
    
    // MARK: - UITableView

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureAppearance()
    }
    
     // MARK: - Private Methods
    
    func configureAppearance() {
        
        backgroundColor = Colors.mainBackgroundColor
        
        currencyImage.contentMode = .scaleAspectFill
        
        moneyLabel.font = .systemFont(ofSize: 34, weight: .light)
        moneyLabel.textColor = Colors.mainTextColor
        
        typeOfOperationLabel.font = .systemFont(ofSize: 34, weight: .bold)
        typeOfOperationLabel.textColor = Colors.mainTextColor
        typeOfOperationLabel.text = operationType
    }
}
