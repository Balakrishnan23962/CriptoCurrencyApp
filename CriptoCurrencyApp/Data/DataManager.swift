//
//  DataManager.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import Foundation
import Combine

protocol CryptoProtocol {
    
//    func fetchData(completion : @escaping ([CoinModel]) -> Void)
    
    func fetchData(completion: @escaping (Result<[CoinModel], Error>) -> Void)
    
}


class DataManager : CryptoProtocol {
    
    static let shared = DataManager()
  
   
    func fetchData(completion: @escaping (Result<[CoinModel], Error>) -> Void) {
        CryptoAPI.call.fetchData { coins in
            switch coins {
            case .success(let success):
                completion(.success(success))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
 
    
//    func fetchData() -> Result<[CoinModel], Error> {
//        var result : Result<[CoinModel], Error>
//
//        let coins = CryptoAPI.call.fetchData()
//
//        switch coins {
//        case .success(let success):
//            result = .success(success)
//        case .failure(let failure):
//            result = .failure(failure)
//        }
//
//        return result
//    }
    
}
