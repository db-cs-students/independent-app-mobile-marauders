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
                CustomTextField(leadingString: "Current Balance:", caption: "Balance ($)", text: currentBalance)
                CustomTextField(leadingString: "Current Loans:", caption:"Loans ($)", text: currentLoans)
                CustomTextField(leadingString: "Weekly Income:", caption: "Income ($)", text: weeklyIncome)
                CustomTextField(leadingString: "Other Expenses:", caption: "Expenses ($)", text: userExpenses)
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
