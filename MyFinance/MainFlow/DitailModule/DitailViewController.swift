//
//  DitailViewController.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 13.09.2022.
//

import UIKit

class DitailViewController: UIViewController {
    
    // MARK: - Views
    
    @IBOutlet weak var ditailTableView: UITableView!
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Colors.mainBackgroundColor
        configureAppearance()
    }
}

// MARK: - Private Methods

private extension DitailViewController {
    
    func configureAppearance() {
        
        configureDitailTableView()
    }
    
    func configureDitailTableView() {
        
        ditailTableView.backgroundColor = Colors.mainBackgroundColor
        
        ditailTableView.register(UINib(nibName: "\(DitailTitleTableViewCell.self)", bundle: .main), forCellReuseIdentifier: "\(DitailTitleTableViewCell.self)")
        ditailTableView.register(UINib(nibName: "\(DitailDescriptionTableViewCell.self)", bundle: .main), forCellReuseIdentifier: "\(DitailDescriptionTableViewCell.self)")
        ditailTableView.dataSource = self
        ditailTableView.delegate = self
    }
}

extension DitailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = ditailTableView.dequeueReusableCell(withIdentifier: "\(DitailTitleTableViewCell.self)", for: indexPath)
            guard let cell = cell as? DitailTitleTableViewCell else {
                return UITableViewCell()
            }
            cell.money = "1200"
            cell.currencyImageString = Icons.ruble
            
            return cell
        case 1:
            let cell = ditailTableView.dequeueReusableCell(withIdentifier: "\(DitailDescriptionTableViewCell.self)", for: indexPath)
            guard let cell = cell as? DitailDescriptionTableViewCell else {
                return UITableViewCell()
            }
            cell.mainDescription = "assdasfndjvnsjbvhsbfvkhjbriuybvhbkhjabvkhbdskvhbdkshbvkdhvbkhsbkdbhdbhbdfhjb"
            
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    
    
}
