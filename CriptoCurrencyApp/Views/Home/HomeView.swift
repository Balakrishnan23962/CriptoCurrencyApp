//
//  HomeView.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                TopMoversView()
                Divider()
                AllCoinView()
            }
            .navigationTitle("Live Prices")
 
        }
        .environmentObject(viewModel)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            HomeView()
        }
    }
}
