//
//  Payments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/29/21.
//

import SwiftUI

struct Payments: View {
    
    @State var dueToday : String
    @State var dueWeek : String
    @State var dueMonth : String
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                CustomNumberTextField(title: "$ Due Today", preview: "Due Today", text: $dueToday)
                Spacer()
                CustomNumberTextField(title: "$ Due This Week", preview: "Weekly Payments", text: $dueWeek)
                Spacer()
                CustomNumberTextField(title: "$ Due This Month", preview: "Monthly Payments", text: $dueMonth)
                Spacer()
                NavigationLink(
                    destination: EditPayments(budgetText1: "", budgetText2: "", budgetText3: ""),
                    label: {
                        Text("Payment List")
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
    
    //    var body: some View {
    //        ZStack {
    //            Color("Background").ignoresSafeArea()
    //            VStack(alignment: .leading) {
    //                Text("$ Due Today")
    //                TextField("Due Today ($)", text: $dueToday)
    //                    .padding()
    //                    .background(RoundedRectangle(cornerRadius: 10)
    //                                    .fill(Color.white)
    //                                    .shadow(radius: 2, y:2)
    //                    )
    //                    .keyboardType(.numberPad)
    //                Spacer()
    //                Text("$ Due This Week")
    //                TextField("Due This Week ($)", text: $dueWeek)
    //                    .padding()
    //                    .background(RoundedRectangle(cornerRadius: 10)
    //                                    .fill(Color.white)
    //                                    .shadow(radius: 2, y:2)
    //                    )
    //                    .keyboardType(.numberPad)
    //                Spacer()
    //                Text("$ Due This Month")
    //                TextField("Due This Month ($)", text: $dueMonth)
    //                    .padding()
    //                    .background(RoundedRectangle(cornerRadius: 10)
    //                                    .fill(Color.white)
    //                                    .shadow(radius: 2, y:2)
    //                    )
    //                    .keyboardType(.numberPad)
    //                    .padding(.bottom, 15)
    //                Spacer()
    //                NavigationLink(
    //                    destination: EditPayments(budgetText1: $housePayment, budgetText2: $carPayment, budgetText3: $phonePayment),
    //                    label: {
    //                        Text("Payment List")
    //                            .frame(minWidth: 0, maxWidth: .infinity)
    //                            .padding()
    //                            .foregroundColor(.black)
    //                            .background(RoundedRectangle(cornerRadius: 10)
    //                                            .fill(Color("Pink"))
    //                                            .shadow(radius: 2, y:2)
    //                            )
    //                            .padding()
    //                    })
    //            }
    //            .padding(.top, 15)
    //            .padding()
    //        }
    //    }
}

struct Payments_Previews: PreviewProvider {
    static var previews: some View {
        Payments(dueToday: "56", dueWeek: "230", dueMonth: "1235")
    }
}
