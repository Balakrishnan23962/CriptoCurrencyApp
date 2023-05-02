//
//  DataManager.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import Foundation
import Combine

protocol CryptoProtocol {
    
    func fetchData() -> Result<[CoinModel],Error>
    
}


class DataManager : CryptoProtocol {
    
    static let shared = DataManager()
    
    func fetchData() -> Result<[CoinModel], Error> {
        let coins = CryptoAPI.call.fetchData()
        switch coins {
        case .success(let success):
            print("Success DataMAnager : \(success.count)")
            return .success(success)
        case .failure(let failure):
            return .failure(failure)
        }
    }
    
}
