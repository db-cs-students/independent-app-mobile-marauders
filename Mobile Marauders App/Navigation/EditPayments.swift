//
//  EditPayments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/30/21.
//

import SwiftUI

struct EditPayments: View {
    var payments : [Payment]
    @State var paymentText : String
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                ScrollView {
                    ForEach(payments, id: \.self) { payment in
                        VStack {
                            HStack {
                                Text(payment.name)
                                Spacer()
                                Button(action: {}, label: {
                                    Image(systemName: "delete.left")
                                        .foregroundColor(.red)
                                })
                            }
                            .padding()
                            TextField(payment.name, text: $paymentText)
                                .padding()
                                .keyboardType(.numberPad)
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.white)
                                                .shadow(radius: 2, y:2)
                                )
                        }
                        .padding()
                    }
                }
                Button(
                    action: {
                    },
                    label: {
                        Text("Add New Payment")
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


struct EditPayments_Previews: PreviewProvider {
    static var previews: some View {
        EditPayments(payments:[Payment(name: "Budget 1", amount: 56.6, type: Type.Car), Payment(name: "Budget 2", amount: 400.6, type: Type.House), Payment(name: "Budget 3", amount: 100.6, type: Type.Other), Payment(name: "Budget 4", amount: 56.6, type: Type.House), Payment(name: "Budget 5", amount: 56.6, type: Type.House), Payment(name: "Budget 6", amount: 56.6, type: Type.House)], paymentText: "")
    }
}
