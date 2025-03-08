//
//  CalculateView.swift
//  SpritingBills
//
//  Created by 櫻井絵理香 on 2025/03/08.
//

import SwiftUI

struct CalculateView: View {
    @State private var totalAmount: String = ""
    @State private var peopleCount: String = ""
    @State private var result: Double? = nil

    var body: some View {
        VStack {
            Text("割り勘計算")
                .font(.largeTitle)
                .padding()

            TextField("支払合計金額", text: $totalAmount)
                .keyboardType(.decimalPad) 
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            TextField("人数", text: $peopleCount)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("計算する") {
                guard let total = Double(totalAmount), let count = Int(peopleCount), count > 0 else {
                    result = nil
                    return
                }
                result = total / Double(count)
            }
            .buttonStyle(.borderedProminent)
            .padding()

            if let result = result {
                Text("1人あたり: \(String(format: "%.2f", result)) 円")
                    .font(.title)
                    .padding()
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    CalculateView()
}
