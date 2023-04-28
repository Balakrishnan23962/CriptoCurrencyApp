//
//  CoinCellView.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI

struct CoinCellView: View {
    var body: some View {
        HStack{
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            
            VStack(alignment: .leading,spacing: 4){
                Text("Bitcoin")
                    .font(.subheadline)
                Text("BTC")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading,2)
            Spacer()
            VStack(alignment: .trailing,spacing: 4){
                Text("$20.330.00")
                    .font(.subheadline)
                Text("-5.60%")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .padding(.leading,2)
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

struct CoinCellView_Previews: PreviewProvider {
    static var previews: some View {
        CoinCellView()
    }
}
