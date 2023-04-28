//
//  DataManager.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import Foundation
import Combine

protocol CryptoProtocol {
    
    func fetchData()
    
}


class DataManager : CryptoProtocol {
    
    static let shared = DataManager()
    
    func fetchData(){
        CryptoAPI().fetchData()
    }
    
}
