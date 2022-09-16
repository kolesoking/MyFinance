//
//  MainViewController.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 12.09.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Constants
    
    private enum Constants {
        static let amountCollectionCell = 3
        
    }
    
    // MARK: - Views
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var financeLabel: UILabel!
    @IBOutlet weak var actionCollectionView: UICollectionView!
    @IBOutlet weak var lastOperationsTableView: UITableView!
    
    
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
    
    // MARK: - Actions
    
}

// MARK: - Private Methods

private extension MainViewController {
    
    func configureAppearance() {
        view.backgroundColor = Colors.mainBackgroundColor
        
        imageView.image = UIImage(named: Icons.ruble)
        
        financeLabel.font = .systemFont(ofSize: 34, weight: .light)
        financeLabel.textColor = Colors.mainTextColor
        financeLabel.text = "401560.54"
        
        configureActionCollectionView()
        configureLastOperationsTableView()
    }
    
    func configureActionCollectionView() {
        
        actionCollectionView.register(UINib(nibName: "\(ActionCollectionViewCell.self)", bundle: .main), forCellWithReuseIdentifier: "\(ActionCollectionViewCell.self)")

        actionCollectionView.contentInset = .init(top: 8, left: 10, bottom: 8, right: 10)
        actionCollectionView.backgroundColor = Colors.mainBackgroundColor
        
        actionCollectionView.delegate = self
        actionCollectionView.dataSource = self
    }
    
    func configureLastOperationsTableView() {
        
        lastOperationsTableView.register(UINib(nibName: "\(LastOperationTableViewCell.self)", bundle: .main), forCellReuseIdentifier: "\(LastOperationTableViewCell.self)")
        lastOperationsTableView.dataSource = self
        lastOperationsTableView.delegate = self
        
        lastOperationsTableView.backgroundColor = Colors.mainBackgroundColor
    }
}

// MARK: - actionCollectionView

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Constants.amountCollectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = actionCollectionView.dequeueReusableCell(withReuseIdentifier: "\(ActionCollectionViewCell.self)", for: indexPath)
        guard let cell = cell as? ActionCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        switch indexPath.row{
        case 0:
            cell.imageString = Icons.addOperation
        case 1:
            cell.imageString = Icons.receivingMoney
        case 2:
            cell.imageString = Icons.giveAvayMoney
        default:
            return UICollectionViewCell()
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = actionCollectionView.bounds.height - 15
        let width = height
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let newOperationVC = NewOperationViewController()
            present(newOperationVC, animated: true)
        case 1:
            let operationListVC = OperationListViewController()
            navigationController?.pushViewController(operationListVC, animated: true)
        case 2:
            let operationListVC = OperationListViewController()
            present(operationListVC, animated: true)
        default:
            print("KOLESO")
        }
    }
}

// MARK: - lastOperationsTableView

extension MainViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = lastOperationsTableView.dequeueReusableCell(withIdentifier: "\(LastOperationTableViewCell.self)", for: indexPath)
        
        guard let cell = cell as? LastOperationTableViewCell else {
            return UITableViewCell()
        }
        // TODO: - Add Operation Services
        
        cell.money = "1000"
        cell.name = "Sergey"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let ditailVC = DitailViewController()
        navigationController?.pushViewController(ditailVC, animated: true)
    }
}


