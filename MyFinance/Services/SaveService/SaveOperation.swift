//
//  SaveOperation.swift
//  MyFinance
//
//  Created by Sergey Kolesnikov on 20.09.2022.
//

import Foundation

struct SaveOperation {
    
    static let shared = SaveOperation()
    
    // MARK: - Constants
    
    private enum Keys: String {
        
        case operations
    }
    
    // MARK: - Properties
    
    let defaults = UserDefaults.standard

    var saveOperations: [OperationModel] {
        get {
            
            if let data = defaults.value(forKey: Keys.operations.rawValue) as? Data {
                return try! PropertyListDecoder().decode([OperationModel].self, from: data)
            } else {
                return [OperationModel]()
            }
        }
        
        set {
            
            if let data = try? PropertyListEncoder().encode(newValue) {
                defaults.set(data, forKey: Keys.operations.rawValue)
            }
        }
    }
    
    // MARK: - Methods
    
    mutating func saveNewOperation(operation: OperationModel) {
        
        saveOperations.append(operation)
    }
    
    mutating func deletAllOperations() {
        saveOperations.removeAll()
    }
    
}


