//
//  AllCoinView.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI

struct AllCoinView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading,spacing: 10){
             
                Text("All Coins")
                    .font(.headline)
                    .padding(.leading)
            
            
            HStack{
                Text("Coin")
                Spacer()
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            ScrollView {
                VStack{
                    ForEach(viewModel.coins,id: \.id) { coin in
                        CoinCellView(coin: coin)
                    }
                }
            }
        }
    }
}

struct AllCoinView_Previews: PreviewProvider {
    static let viewModel = HomeViewModel()
    static var previews: some View {
        AllCoinView()
            .environmentObject(viewModel)
    }
}
