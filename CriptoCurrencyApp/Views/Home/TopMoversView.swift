//
//  TopMoversView.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI

struct TopMoversView: View {
    @EnvironmentObject var viewModel: HomeViewModel
    var body: some View {
        VStack(alignment: .leading){
            Section {
                ScrollView(.horizontal){
                    HStack(spacing: 16) {
                        ForEach(viewModel.topMovingCoins) { coin in
                            TopMoversItem(coin: coin)
                        }
                    }
                }
            } header: {
                Text("Top Movers")
            }
        }
        .padding()

    }
}

struct TopMoversView_Previews: PreviewProvider {
    static let viewModel = HomeViewModel()
    static var previews: some View {
        TopMoversView()
            .environmentObject(viewModel)
    }
}
