//
//  AddPayment.swift
//  Mobile Marauders App
//
//  Created by Logan L on 12/9/21.
//

import SwiftUI

struct AddPayment: View {
    @State var newPaymentName : String = "New Budget"
    @State var newPaymentAmount : String = "100"
    @State var newPaymentType = Type.Other
    @EnvironmentObject var data : Data
    
    func createNumber() -> Double? {
        guard let newPaymentAmountNumber = Double(newPaymentAmount) else {
            return nil
        }
        return newPaymentAmountNumber
    }
    
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                CustomTextField(title: "Name:", preview: "Budget Name", text: $newPaymentName)
                CustomNumberTextField(title: "Amount:", preview: "Budget Amount ($)", text: $newPaymentAmount)
                    .padding(.top, 30)
                
                VStack(alignment: .leading) {
                    Text("Repeat: \(newPaymentType.id)")
                        .padding()
                    Picker("Repeat", selection: $newPaymentType) {
                        Text("Car").tag(Type.Car)
                        Text("House").tag(Type.House)
                        Text("Phone").tag(Type.Phone)
                        Text("Credit").tag(Type.Credit)
                        Text("Other").tag(Type.Other)
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

struct AddPayment_Previews: PreviewProvider {
    static var previews: some View {
        AddPayment()
    }
}
