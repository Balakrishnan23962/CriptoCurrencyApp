//
//  CriptoAPI.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI
import Combine

final class CryptoAPI {
    
    var coins = [CoinModel]()
    
    static let call = CryptoAPI()
    
    private let BaseUrl = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=en"
    
    init() {}
    
    func fetchData(completion:  @escaping (Result<[CoinModel], Error>) -> Void) {

        guard let url = URL(string: BaseUrl) else {
            completion(.failure(CryptoError.urlNotFoundError))
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
            do{
                let coinsString = try JSONDecoder().decode([CoinModel].self, from: data)
//                print("API : \(coinsString)")
                self.coins = coinsString
                completion(.success(self.coins))
            }catch{
                print("Error")
            }

        }
        .resume()
    }
    
//    func fetchData() -> Result<[CoinModel], Error> {
//
//        var result: Result<[CoinModel], Error>!
//
//        guard let url = URL(string: BaseUrl) else {
//            result = .failure(CryptoError.urlNotFoundError)
//            return result
//        }
//
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                print("Error: \(error)")
//            }
//
//            if let response = response as? HTTPURLResponse {
//                print("REs code : \(response)")
//            }
//
//            guard let data = data else {
//                return
//            }
//            do {
//                let coinString = try JSONDecoder().decode([CoinModel].self, from: data)
//                print("Coin : \(coinString)")
//                result = .success(coinString)
//            }
//            catch {
//                print("Error")
//            }
//        }
//        .resume()
//
//        return result
//    }
    
    
}
