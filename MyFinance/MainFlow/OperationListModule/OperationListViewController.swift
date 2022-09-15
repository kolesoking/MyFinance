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
        configureCollectionView()
    }
    
    func configureCollectionView() {
        
        collectionView.register(UINib(nibName: "\(OperationCollectionViewCell.self)", bundle: .main), forCellWithReuseIdentifier: "\(OperationCollectionViewCell.self)")
        
        collectionView.backgroundColor = Colors.mainBackgroundColor
        collectionView.contentInset = .init(top: 8, left: 10, bottom: 8, right: 10)
        
        collectionView.dataSource = self
        collectionView.delegate = self
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
}
