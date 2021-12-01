//
//  EditPayments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/30/21.
//

import SwiftUI

struct EditPayments: View {
    
    @Binding var budgetText1 : String
    @Binding var budgetText2 : String
    @Binding var budgetText3 : String
    
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                VStack {
                    HStack {
                        Text("House Payment")
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "delete.left")
                                .foregroundColor(.red)
                        })
                    }
                    .padding()
                    TextField("House Payment", text : $budgetText1)
                        .padding()
                        .keyboardType(.numberPad)
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .shadow(radius: 2, y:2)
                        )
                        .padding()
                }
                Spacer()
                VStack {
                    HStack {
                        Text("Car Payment")
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "delete.left")
                                .foregroundColor(.red)
                        })
                    }
                    .padding()
                    TextField("Car Payment", text : $budgetText2)
                        .padding()
                        .keyboardType(.numberPad)
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .shadow(radius: 2, y:2)
                        )
                        .padding()
                }
                Spacer()
                VStack {
                    HStack {
                        Text("Phone Payment")
                        Spacer()
                        Button(action: {}, label: {
                            Image(systemName: "delete.left")
                                .foregroundColor(.red)
                        })
                    }
                    .padding()
                    TextField("Phone Payment", text : $budgetText3)
                        .padding()
                        .keyboardType(.numberPad)
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .shadow(radius: 2, y:2)
                        )
                        .padding()
                }
                Spacer()
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
        EditPayments(budgetText1: .constant(""), budgetText2: .constant(""), budgetText3: .constant(""))
    }
}
