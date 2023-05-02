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
    @Published var coins = [CoinModel]()
    init(dataManager : CryptoProtocol = DataManager.shared) {
        self.dataManager = dataManager
        fetchData()
    }
    
    func fetchData() {
        
        let coins = dataManager.fetchData()
        
        switch coins {
        case .success(let success):
            self.coins = success
            for coin in self.coins {
                print("\(coin.name)")
            }
        case .failure(let failure):
            let error = failure
            print("Error :\(error.localizedDescription)")
        }
      
    }
    
}
