//
//  TopMoversItem.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI
import Kingfisher

struct TopMoversItem: View {
    @State var coin : CoinModel
    var body: some View {
        VStack(alignment: .leading){
            //Image
            let url = URL(string: coin.image)
            KFImage(url)
                .resizable()
                .frame(width: 50,height: 50)
                .foregroundColor(.orange)
                .padding(.bottom,5)
            
            HStack(spacing: 2){
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text(coin.priceChangePercentage24H.toPercent())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("itemBackground"))
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth: 1)
        }
    
    }
}

//struct TopMoversItem_Previews: PreviewProvider {
//    static let viewModel = HomeViewModel()
//    static var previews: some View {
//        TopMoversItem(coin: viewModel.coins.last)
//    }
//}
