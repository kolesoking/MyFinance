//
//  OperationModel.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 20.09.2022.
//

import Foundation

struct OperationModel: Codable {
    
    let name: String
    let money: String
    
    init(name: String, money: String) {
        
        self.name = name
        self.money = money
    }
}
