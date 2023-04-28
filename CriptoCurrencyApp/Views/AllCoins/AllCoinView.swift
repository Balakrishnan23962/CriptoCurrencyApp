//
//  AllCoinView.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI

struct AllCoinView: View {
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
                    ForEach(0..<20) { _ in
                        CoinCellView()
                    }
                }
            }
        }
    }
}

struct AllCoinView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinView()
    }
}
