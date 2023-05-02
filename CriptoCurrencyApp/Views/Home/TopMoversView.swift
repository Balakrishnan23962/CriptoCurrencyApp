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
                        ForEach(0..<5) { _ in
                            TopMoversItem()
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
    static var previews: some View {
        TopMoversView()
    }
}
