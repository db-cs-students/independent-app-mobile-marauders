//
//  AddBudget.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/30/21.
//

import SwiftUI

struct AddBudget: View {
    @State var newBudgetName : String = "New Budget"
    @State var newBudgetAmount : String = "234"
    @State var newRepeatDate = Repeat.Daily
    
    enum Repeat : String, CaseIterable, Identifiable {
        case Daily
        case Weekly
        case Biweekly
        case Monthly
        case Yearly
        
        var id: String { self.rawValue }
    }
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                CustomTextField(title: "Name:", preview: "Budget Name", text: $newBudgetName)
                CustomTextField(title: "Amount:", preview: "Budget Amount ($)", text: $newBudgetAmount)
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
                
                HStack {
                    Button(action: {
                        
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
    }
}
