//
//  LastOperationTableViewCell.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 12.09.2022.
//

import UIKit

class LastOperationTableViewCell: UITableViewCell {
    
    struct Money {
        var color: UIColor
        var symbol: String
        
        static func set(color: UIColor, symbol: String) -> Money {
            Money(color: color, symbol: symbol)
        }
    }
    
    // MARK: - Views
    
    @IBOutlet weak var bacgroundViewCell: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    // MARK: - Calculated
    
    var money1: Money {
        return isReseiving ? Money.set(color: Colors.reseivingMoneyColor, symbol: "+") : Money.set(color: Colors.giveAwayMoneyColor, symbol: "-")
    }
    
    // MARK: - Properties
    
    
    var name = "" {
        didSet {
            nameLabel.text = name
        }
    }
    
    var money = "" {
        didSet {
            moneyLabel.text = "\(money)"
        }
    }
    
    var isReseiving: Bool = true {
        didSet {
            moneyLabel.textColor = money1.color
            
            moneyLabel.text = "\(money1.symbol) \(money)"
        }
    }
    
    // MARK: - UITableViewCell
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configureAppearance()
    }
    
    // MARK: - Private Methods
    
    private func configureAppearance() {
        
        backgroundColor = Colors.mainBackgroundColor

        // MARK: - bacgroundViewCell
        
        bacgroundViewCell.backgroundColor = Colors.cellBackgroundColor
        bacgroundViewCell.layer.cornerRadius = 12
        
        // MARK: - nameLabel
        
        nameLabel.font = .systemFont(ofSize: 24, weight: .light)
        nameLabel.textColor = Colors.mainTextColor
        
        // MARK: - moneyLabel
        
        moneyLabel.font = .systemFont(ofSize: 24, weight: .light)
        moneyLabel.textColor = money1.color
    }
}
