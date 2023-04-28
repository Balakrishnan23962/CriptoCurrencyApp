//
//  CriptoAPI.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import Foundation


final class CryptoAPI {
    
    
    
    private let BaseUrl = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=en"
    
    
    func fetchData() {
        
        guard let url = URL(string: BaseUrl) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error in DataTask : \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse {
                print("Response Code : \(response.statusCode)")
            }
            
            guard let data = data else {
                return
            }
            print("Data: \(data)")
        }
        .resume()
    }
    
}
