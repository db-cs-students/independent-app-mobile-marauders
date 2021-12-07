//
//  Payments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/29/21.
//

import SwiftUI

struct Payments: View {
    @EnvironmentObject var data: Data
    @State var dueToday : String
    @State var dueWeek : String
    @State var dueMonth : String
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack(alignment: .leading) {
                Text("Average $ Due Today:")
                    .padding()
                
                Text("$\(data.monthlyExpenses/30, specifier: "%.2f")")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                
                Spacer()
                Text("Average $ Due This Week:")
                    .padding()
                
                Text("$\(data.monthlyExpenses/4, specifier: "%.2f")")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                Spacer()
                Text("$ Due This Month:")
                    .padding()
                
                Text("$\(data.monthlyExpenses, specifier: "%.2f")")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.black)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                
                Spacer()
                NavigationLink(
                    destination: EditPayments(),
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
            .environmentObject(Data())
    }
}
