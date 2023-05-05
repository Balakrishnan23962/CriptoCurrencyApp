//
//  HomeViewModel.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import Foundation
import Combine
import SwiftUI

class HomeViewModel : ObservableObject {
    
    let dataManager : CryptoProtocol
    @Published var coins : [CoinModel] = []
    @Published var topMovingCoins : [CoinModel] = []
    init(dataManager : CryptoProtocol = DataManager.shared) {
        self.dataManager = dataManager
        fetchData()
    }
    
//    func fetchData() {
//
//        let coins = dataManager.fetchData()
//
//        switch coins {
//        case .success(let success):
//            self.coins = success
//        case .failure(let failure):
//            print("Error: \(failure)")
//        }
//
//    }
    
    func fetchData() {
        
        DispatchQueue.global(qos: .background).async {
            
            DispatchQueue.main.async {
                self.dataManager.fetchData { coins in
                    switch coins {
                    case .success(let success):
                        DispatchQueue.main.async {
                            self.coins = success
                            self.configureTopMovers()
                        }
                    case .failure(let failure):
                        print("Error: \(failure)")
                    }
                }
            }
            
        }
        
    }
    
    func configureTopMovers() {
        let topMovers = coins.sorted { $0.priceChangePercentage24H > $1.priceChangePercentage24H }
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
    
}
