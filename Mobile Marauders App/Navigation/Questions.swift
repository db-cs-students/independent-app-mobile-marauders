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
                CustomNumberTextField(title: "Current Balance:", preview: "Balance ($)", text: $currentBalance)
                CustomNumberTextField(title: "Current Loans:", preview:"Loans ($)", text: $currentLoans)
                CustomNumberTextField(title: "Weekly Income:", preview: "Income ($)", text: $weeklyIncome)
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
                    NavigationLink(
                        destination: Overview(values: [200, 100, 200, 400]),
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
    }
}
