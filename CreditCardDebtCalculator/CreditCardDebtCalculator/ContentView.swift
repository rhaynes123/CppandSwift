//
//  ContentView.swift
//  CreditCardDebtCalculator
//
//  Created by richard Haynes on 8/31/24.
//

import SwiftUI

struct ContentView: View {
    @State private var principalAmount: Float = 0
    @State private var interestRate: Float = 0
    @State private var paymentPeriodInDays: Int32 = 0
    @State private var lateFees: Float = 0
    @State private var previousTotalPaymentsAmount: Float = 0
    @State private var total: Float = 0
    var body: some View {
        VStack {
            
            
            Form {
                Section {
                    TextField("PrincipalAmount", value: $principalAmount, format: .currency(code: "USD"))
                } header: {
                    Text("Principal Amount")
                }
                
                Section {
                    TextField("InterestRate", value: $interestRate, format: .percent)
                } header: {
                    Text("Interest Rate")
                }
                
                Section {
                    TextField("PaymentPeriodInDays", value: $paymentPeriodInDays, format: .number)
                } header: {
                    Text("Payment Period In Days")
                }
                
                Section {
                    TextField("Late Fees", value: $lateFees, format: .currency(code: "USD"))
                } header: {
                    Text("LateFees")
                }
                
                Section {
                    TextField("PreviousTotalPayment", value: $previousTotalPaymentsAmount, format: .currency(code: "USD"))
                } header: {
                    Text("Previous Total Payment")
                }
                
                Button("Calculate Debt") {
                    total = Float(Calculate(principalAmount, interestRate, paymentPeriodInDays,lateFees, previousTotalPaymentsAmount))
                }
            }
            
            
            Text("Total Calculated Debt: \(total)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
