//
//  OperationCollectionViewCell.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 15.09.2022.
//

import UIKit

class OperationCollectionViewCell: UICollectionViewCell {
    
    // MARK: - Views
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var moneySymbolLabel: UILabel!
    
    // MARK: - Coculete
    
    private var moneyColor: UIColor {
        return isReseiving ? Colors.reseivingMoneyColor : Colors.giveAwayMoneyColor
    }

    private var symbol: String {
        return moneyColor == Colors.reseivingMoneyColor ? "+ " : "- "
    }
    
    // MARK: - Properties
    
    var isReseiving: Bool = false {
        didSet {
            moneyLabel.textColor = moneyColor
            
            moneySymbolLabel.text = symbol
            moneySymbolLabel.textColor = moneyColor
        }
    }
    
    var nameString = "Name" {
        didSet {
            nameLabel.text = nameString
        }
    }
    
    var moneyString = "0.0" {
        didSet {
            moneyLabel.text = moneyString
        }
    }
    
    // MARK: - UICollectionViewCell

    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureAppearance()
    }
    
    // MARK: - PrivateMethods
    
    func configureAppearance() {
        
        backgroundColor = Colors.cellBackgroundColor
        layer.cornerRadius = 10
        
        nameLabel.font = .systemFont(ofSize: 24, weight: .light)
        nameLabel.textColor = Colors.mainTextColor
        nameLabel.numberOfLines = 0
        
        moneyLabel.font = .systemFont(ofSize: 24, weight: .light)
        moneyLabel.textColor = moneyColor
        moneyLabel.numberOfLines = 0
        
        moneySymbolLabel.text = symbol
        moneySymbolLabel.font = .systemFont(ofSize: 24, weight: .light)
        moneySymbolLabel.textColor = moneyColor
        moneySymbolLabel.numberOfLines = 0
    }

}
