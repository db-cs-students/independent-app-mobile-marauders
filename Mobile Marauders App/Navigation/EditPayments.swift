//
//  EditPayments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/30/21.
//

import SwiftUI

struct EditPayments: View {
    @EnvironmentObject var data : Data
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                ScrollView {
                    ForEach(data.payments, id: \.self) { payment in
                        VStack {
                            HStack {
                                Text(payment.name)
                                Spacer()
                                Button(action: {
                                    data.removePayment(payment: payment)
                                }, label: {
                                    Image(systemName: "delete.left")
                                        .foregroundColor(.red)
                                })
                            }
                            .padding()
                            Text("$\(payment.amount, specifier: "%.2f")")
                                .frame(minWidth: 0, maxWidth: .infinity)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10)
                                                .fill(Color.white)
                                                .shadow(radius: 2, y:2)
                                )
                        }
                        .padding()
                    }
                }
                NavigationLink(
                    destination: AddPayment(),
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
        EditPayments()
            .environmentObject(Data())
    }
}
