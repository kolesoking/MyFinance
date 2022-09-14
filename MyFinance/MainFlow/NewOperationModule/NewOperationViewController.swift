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
    @IBOutlet weak var descriptionTextField: UITextField!
    @IBOutlet weak var saveOperationButton: UIButton!
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        configureAppearance()
    }
    
    // MARK: - Actions
    
    @IBAction func saveOperationButtonPresed(_ sender: Any) {
    }
    
}

// MARK: - Private Methods

private extension NewOperationViewController {
    
    func configureAppearance() {
        
        view.backgroundColor = Colors.mainBackgroundColor
        
        mainLabel.textColor = Colors.olderTextColor
    }
}
