//
//  TopMoversItem.swift
//  CriptoCurrencyApp
//
//  Created by Gasc_Internship1 on 28/04/23.
//

import SwiftUI

struct TopMoversItem: View {
    var body: some View {
        VStack(alignment: .leading){
            //Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32,height: 32)
                .foregroundColor(.orange)
                .padding(.bottom,5)
            
            HStack(spacing: 2){
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Text("+ 5%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4),lineWidth: 2)
        }
    
    }
}

struct TopMoversItem_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItem()
    }
}