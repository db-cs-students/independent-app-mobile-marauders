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
                CustomTextField(title: "Current Balance:", preview: "Balance ($)", text: $currentBalance)
                CustomTextField(title: "Current Loans:", preview:"Loans ($)", text: $currentLoans)
                CustomTextField(title: "Weekly Income:", preview: "Income ($)", text: $weeklyIncome)
                CustomTextField(title: "Other Expenses:", preview: "Expenses ($)", text: $userExpenses)
                Spacer()
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
    }
}
