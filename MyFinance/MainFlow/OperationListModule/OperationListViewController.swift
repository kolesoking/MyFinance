//
//  OperationListViewController.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 15.09.2022.
//

import UIKit

class OperationListViewController: UIViewController {
    
    // MARK: - Views
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Propeties
    
    var operations: [String] = []
    
    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAppearance()
    }
}

// MARK: - Private Mothods

private extension OperationListViewController {
    
    func configureAppearance() {
        
        view.backgroundColor = Colors.mainBackgroundColor
        
        configureCollectionView()
        configureNavigationBar()
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.backgroundColor = Colors.mainBackgroundColor
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
    }
    
    func configureCollectionView() {
        
        collectionView.register(UINib(nibName: "\(OperationCollectionViewCell.self)", bundle: .main), forCellWithReuseIdentifier: "\(OperationCollectionViewCell.self)")
        
        collectionView.backgroundColor = Colors.mainBackgroundColor
        collectionView.contentInset = .init(top: 8, left: 10, bottom: 8, right: 10)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    func configureNavigationBar() {
        
        navigationController?.navigationBar.barTintColor = Colors.mainTintColor
        navigationController?.navigationBar.tintColor = Colors.mainTintColor
        
        let customTitleView = createCustomTitleView(totalMoney: "1200", imageCurrencyString: Icons.ruble)
        navigationItem.titleView = customTitleView
    }
}

// MARK: - UICollectionView

extension OperationListViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return operations.count
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "\(OperationCollectionViewCell.self)", for: indexPath)
        guard let cell = cell as? OperationCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.nameString = "Sergey"
        cell.moneyString = "100.0"
        cell.isReseiving = true
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let widht = view.bounds.width - 16
        
        return CGSize(width: widht, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let ditailVC = DitailViewController()
        present(ditailVC, animated: true)
    }
}
