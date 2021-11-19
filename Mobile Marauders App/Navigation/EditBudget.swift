//
//  EditBudget.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/19/21.
//

import SwiftUI

struct EditBudget: View {
    @State var budgetName : String = ""
    @State var budgetAmount : String = ""
    @State var selectedRepeat = Repeat.Weekly
    
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
                CustomTextField(leadingString: "Name:", caption: "Budget Name", text: budgetName)
                CustomTextField(leadingString: "Amount:", caption: "Budget Amount", text: budgetAmount)
                    .padding(.top, 30)
                
                VStack(alignment: .leading) {
                    Text("Repeat: \(selectedRepeat.id)")
                        .padding()
                    Picker("Repeat", selection: $selectedRepeat) {
                        Text("Daily").tag(Repeat.Daily)
                        Text("Weekly").tag(Repeat.Weekly)
                        Text("Biweekly").tag(Repeat.Biweekly)
                        Text("Monthly").tag(Repeat.Monthly)
                        Text("Yearly").tag(Repeat.Yearly)
                    }
                    .offset(x: 0,y: -40)
                }
                Spacer()
                
                HStack {
                    Button(action: {
                        
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
                }
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct EditBudget_Previews: PreviewProvider {
    static var previews: some View {
        EditBudget()
    }
}
