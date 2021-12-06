//
//  Payments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/29/21.
//

import SwiftUI

struct Payments: View {
    var payments : [Payment] = [Payment(name: "Car Payment", amount: 200.00, type: Type.Car), Payment(name: "House Payment", amount: 600.00, type: Type.House), Payment(name:"Phone Payment", amount: 125.00, type: Type.Phone)]
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
                    destination: EditPayments(payments: payments, paymentText: ""),
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
}

struct Payments_Previews: PreviewProvider {
    static var previews: some View {
        Payments(dueToday: "56", dueWeek: "230", dueMonth: "1235")
    }
}
