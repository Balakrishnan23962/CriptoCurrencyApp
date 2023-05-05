//
//  CoinCellView.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI
import Kingfisher

struct CoinCellView: View {
    @State var coin : CoinModel
    var body: some View {
        HStack{
            Text("\(coin.marketCapRank )")
                .font(.caption)
                .foregroundColor(.gray)
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading,spacing: 4){
                Text(coin.name)
                    .font(.subheadline)
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading,2)
            Spacer()
            VStack(alignment: .trailing,spacing: 4){
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

struct CoinCellView_Previews: PreviewProvider {
    static let viewModel = HomeViewModel()
    static var previews: some View {
        CoinCellView(coin: viewModel.coins.first!)
    }
}
