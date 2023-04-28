//
//  HomeViewModel.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import Foundation
import Combine


class HomeViewModel : ObservableObject {
    
    let dataManager : CryptoProtocol
    
    init(dataManager : CryptoProtocol = DataManager.shared) {
        self.dataManager = dataManager
        fetchData()
    }
    
    func fetchData() {
        
        dataManager.fetchData()
        
    }
    
}
