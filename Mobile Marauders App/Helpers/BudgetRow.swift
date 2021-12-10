//
//  BudgetRow.swift
//  Mobile Marauders App
//
//  Created by Grant M on 12/8/21.
//

import SwiftUI

struct BudgetRow: View {
    @EnvironmentObject var data: Data
    

    
    
    var body: some View {
        VStack {
        List {
            HStack {
                Text("Budget Name:")
                    .padding()
                Text("Days Left:")
                    .padding()
                Text("On Pace:")
                    .padding()
            }
            
            ForEach(data.budgets, id: \.self) { budget in
                HStack {
                    Text(budget.name)
                        .frame(width: 105, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("\(budget.daysLeft)")
                        .padding()
                        .frame(width: 60, height: 60, alignment: .center)
                    Image(systemName: budget.pace ? "checkmark.circle.fill" : "xmark.circle.fill")
                        .padding()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
        }
        NavigationLink(
        
            destination: AddBudget(),
            label: {
                Text("New Budget")
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


struct BudgetRow_Previews: PreviewProvider {
    static var previews: some View {
        BudgetRow()
            .environmentObject(Data())
    }
}

