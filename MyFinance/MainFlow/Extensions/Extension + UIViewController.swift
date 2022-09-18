//
//  Extension + UIViewController.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 16.09.2022.
//

import UIKit

extension UIViewController {
    
    func createCustomTitleView(totalMoney: String, imageCurrencyString: String) -> UIView {
        
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 280, height: 51)
        
        let imageCurrency = UIImageView()
        imageCurrency.image = UIImage(named: imageCurrencyString)
        imageCurrency.frame = CGRect(x: 5, y: 0, width: 40, height: 40)
        view.addSubview(imageCurrency)
        
        let totalMoneyLabel = UILabel()
        totalMoneyLabel.frame = CGRect(x: 50, y: 6, width: 220, height: 32)
        totalMoneyLabel.text = totalMoney
        totalMoneyLabel.font = .systemFont(ofSize: 32, weight: .light)
        totalMoneyLabel.textColor = Colors.mainTextColor
        view.addSubview(totalMoneyLabel)
         
        return view
    }
    
    func setNavBar() {
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.backgroundColor = Colors.mainBackgroundColor
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance

    }
}
