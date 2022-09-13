//
//  LastOperationTableViewCell.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 12.09.2022.
//

import UIKit

class LastOperationTableViewCell: UITableViewCell {
    
    let id = "lastOperation"
    
    // MARK: - Views
    
    @IBOutlet weak var bacgroundViewCell: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    // MARK: - Calculated
    
    var moneyColor: UIColor? {
        return isReseiving ? .green : .red
    }
    
    // MARK: - Properties
    
    var name = "" {
        didSet {
            nameLabel.text = name
        }
    }
    
    var money = "" {
        didSet {
            moneyLabel.text = money
        }
    }
    
    var isReseiving: Bool = true {
        didSet {
            moneyLabel.textColor = moneyColor
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
        moneyLabel.textColor = moneyColor
    }
}
