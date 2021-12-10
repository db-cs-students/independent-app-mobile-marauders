//
//  EditBudget.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/19/21.
//

import SwiftUI

struct EditBudget: View {
    @State var budgetName : String
    @State var budgetAmount : String
    @State var repeatDate : Repeat
    @EnvironmentObject var data : Data
    
    func createNumber() -> Double? {
        guard let budgetAmountNumber = Double(budgetAmount) else {
            return nil
        }
        return budgetAmountNumber
    }
    
    func determineDays() -> Int {
        switch repeatDate {
        case Repeat.Daily:
            return 1
        case Repeat.Weekly:
            return 7
        case Repeat.Biweekly:
            return 14
        case Repeat.Monthly:
            return 30
        default:
            return 365
        }
    }
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                CustomTextField(title: "Name:", preview: "Budget Name", text: $budgetName)
                CustomNumberTextField(title: "Amount:", preview: "Budget Amount ($)", text: $budgetAmount)
                    .padding(.top, 30)
                
                VStack(alignment: .leading) {
                    Text("Repeat: \(repeatDate.id)")
                        .padding()
                    Picker("Repeat", selection: $repeatDate) {
                        Text("Daily").tag(Repeat.Daily)
                        Text("Weekly").tag(Repeat.Weekly)
                        Text("Biweekly").tag(Repeat.Biweekly)
                        Text("Monthly").tag(Repeat.Monthly)
                        Text("Yearly").tag(Repeat.Yearly)
                    }
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(.white))
                                    .shadow(radius: 2, y:2))
                    .padding()
                }
                Spacer()
                NavigationLink(destination: BudgetTable(), label: {
                                HStack {
                    Button(action: {
                        data.addBudget(budget: Budget(name: budgetName, amount: createNumber() ?? 0.00, repeatDate: repeatDate, daysLeft: determineDays(), pace: false))
                    }, label: {
                        Text("Finish")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                    })
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("Pink"))
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                    Button(action: {
                    }, label: {
                        Text("Delete")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                    })
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("Red"))
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                }})
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        EditBudget(budgetName: "", budgetAmount: "", repeatDate: Repeat.Weekly)
            .environmentObject(Data())
    }
}
