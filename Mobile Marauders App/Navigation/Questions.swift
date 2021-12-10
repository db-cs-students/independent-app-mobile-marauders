//
//  Questions.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/16/21.
//

import SwiftUI

struct Questions: View {
    @EnvironmentObject var data : Data
    @State var currentBalance : String = ""
    @State var monthlyIncome : String = ""
    @State var userExpenses : String = ""
    
    func createDoubles() -> [Double?] {
        guard let currentBalanceNumber = Double(currentBalance),
              let monthlyIncomeNumber = Double(monthlyIncome),
              let userExpensesNumber = Double(userExpenses) else {
            return [0,0,0,0]
        }
        return [currentBalanceNumber, monthlyIncomeNumber,userExpensesNumber]
    }
    
    func refreshUserNumbers() {
        data.monthlyIncome = createDoubles()[2] ?? data.monthlyIncome
        data.monthlyExpenses = createDoubles()[3] ?? data.monthlyExpenses
        data.currentBalance = createDoubles()[0] ?? data.currentBalance
    }
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                CustomNumberTextField(title: "Current Balance:", preview: "Balance ($)", text: $currentBalance)
                CustomNumberTextField(title: "Monthly Income:", preview: "Income ($)", text: $monthlyIncome)
                CustomNumberTextField(title: "Other Expenses:", preview: "Expenses ($)", text: $userExpenses)
                Spacer()
                HStack {
                    NavigationLink(
                        destination: New_User(),
                        label: {
                            Text("Back")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.black)
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.white)
                                                .shadow(radius: 2, y:2)
                                )
                                .padding()
                        })
                    Button(action: {refreshUserNumbers()}, label: {
                        NavigationLink(
                            destination: Overview(values: [data.currentBalance, 100, 200, 400]),
                            label: {
                                Text("Continue")
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    .foregroundColor(.black)
                                    .background(RoundedRectangle(cornerRadius: 10)
                                                    .fill(Color("Pink"))
                                                    .shadow(radius: 2, y:2)
                                    )
                                    .padding()
                            })
                    })
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Questions_Previews: PreviewProvider {
    static var previews: some View {
        Questions()
            .environmentObject(Data())
    }
}
