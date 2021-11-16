//
//  Questions.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/16/21.
//

import SwiftUI

struct Questions: View {
    @State var currentBalance : String = ""
    @State var currentLoans : String = ""
    @State var weeklyIncome : String = ""
    @State var userExpenses : String = ""
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                VStack(alignment: .leading) {
                    Text("Current Balance:")
                    HStack {
                        Text("$")
                        TextField("Balance", text : $currentBalance)
                            .disableAutocorrection(true)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                            .shadow(radius: 2, y:2)
                        )
                    }
                }
                .padding()
                VStack(alignment: .leading) {
                    Text("Current Loans")
                    HStack {
                        Text("$")
                        TextField("Loans", text : $currentLoans)
                            .disableAutocorrection(true)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                            .shadow(radius: 2, y:2)
                        )
                    }
                }
                .padding()
                VStack(alignment: .leading) {
                    Text("Weekly Income")
                    HStack {
                        Text("$")
                        TextField("Income", text : $weeklyIncome)
                            .disableAutocorrection(true)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                            .shadow(radius: 2, y:2)
                        )
                    }
                }
                .padding()
                VStack(alignment: .leading) {
                    Text("Other Expenses")
                    HStack {
                        Text("$")
                        TextField("Expenses", text : $userExpenses)
                            .disableAutocorrection(true)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                            .shadow(radius: 2, y:2)
                        )
                    }
                }
                .padding()
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Questions_Previews: PreviewProvider {
    static var previews: some View {
        Questions()
    }
}
