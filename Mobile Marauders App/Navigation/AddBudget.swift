//
//  AddBudget.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/30/21.
//

import SwiftUI

struct AddBudget: View {
    @State var newBudgetName : String = "New Budget"
    @State var newBudgetAmount : String = "100"
    @State var newRepeatDate = Repeat.Daily
    @EnvironmentObject var data : Data
    
    func createNumber() -> Double? {
        guard let newBudgetAmountNumber = Double(newBudgetAmount) else {
            return nil
        }
        return newBudgetAmountNumber
    }
    
    func determineDays() -> Int {
        switch newRepeatDate {
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
                CustomTextField(title: "Name:", preview: "Budget Name", text: $newBudgetName)
                CustomNumberTextField(title: "Amount:", preview: "Budget Amount ($)", text: $newBudgetAmount)
                    .padding(.top, 30)
                
                VStack(alignment: .leading) {
                    Text("Repeat: \(newRepeatDate.id)")
                        .padding()
                    Picker("Repeat", selection: $newRepeatDate) {
                        Text("Daily").tag(Repeat.Daily)
                        Text("Weekly").tag(Repeat.Weekly)
                        Text("Biweekly").tag(Repeat.Biweekly)
                        Text("Monthly").tag(Repeat.Monthly)
                        Text("Yearly").tag(Repeat.Yearly)
                    }
                }
                Spacer()
                NavigationLink(destination: BudgetTable(), label: {
                    HStack {
                        Button(action: {
                            data.addBudget(budget: Budget(name: newBudgetName, amount: createNumber() ?? 0.00, repeatDate: newRepeatDate, daysLeft: determineDays(), pace: false))
                        }, label: {
                            Text("Create Budget")
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
                    }
                })
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AddBudget_Previews: PreviewProvider {
    static var previews: some View {
        AddBudget()
            .environmentObject(Data())
    }
}
