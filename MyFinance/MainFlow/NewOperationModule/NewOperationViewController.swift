//
//  NewOperationViewController.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 14.09.2022.
//

import UIKit

class NewOperationViewController: UIViewController {
    
    // MARK: - Views
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var operationSegmentedView: UISegmentedControl!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBOutlet weak var saveOperationButton: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
    }
    
    // MARK: - Actions
    
    @IBAction func saveOperationButtonPresed(_ sender: Any) {
        // TODO: - AddSaveService
        dismiss(animated: true)
    }
    
}

// MARK: - Private Methods

private extension NewOperationViewController {
    
    // MARK: - ConfigureApearance
    
    func configureAppearance() {
        
        view.backgroundColor = Colors.mainBackgroundColor
        
        mainLabel.textColor = Colors.mainTextColor
        mainLabel.font = .systemFont(ofSize: 34, weight: .light)
        mainLabel.text = "New Operation"
        
        moneyLabel.textColor = Colors.olderTextColor
        moneyLabel.font = .systemFont(ofSize: 20, weight: .light)
        moneyLabel.text = "Сумма"
        
        operationSegmentedView.backgroundColor = Colors.cellBackgroundColor
        operationSegmentedView.setTitle("Покупка", forSegmentAt: 0)
        operationSegmentedView.setTitle("Стрижка", forSegmentAt: 1)
        operationSegmentedView.selectedSegmentTintColor = Colors.mainBackgroundColor
        let textAtributed = [NSAttributedString.Key.foregroundColor: Colors.mainTextColor]
        operationSegmentedView.setTitleTextAttributes(textAtributed, for: .normal)
        
        moneyTextField.backgroundColor = Colors.cellBackgroundColor
        moneyTextField.textColor = Colors.mainTextColor
        moneyTextField.placeholder = "SUM"
        moneyTextField.font = .systemFont(ofSize: 18, weight: .light)
        
        saveOperationButton.backgroundColor = Colors.cellBackgroundColor
        saveOperationButton.layer.cornerRadius = 5
        saveOperationButton.setTitle("Cохранить", for: .normal)
        saveOperationButton.setTitleColor(Colors.mainTextColor, for: .normal)
        saveOperationButton.setTitleColor(Colors.olderTextColor, for: .highlighted)
    }
}
