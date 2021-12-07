//
//  BudgetTable.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/30/21.
//

import SwiftUI


struct Budget: Codable, Identifiable {
    let id: UUID
    let name: String
    let daysleft: Int
    let pace: Bool
    
    init(name: String, daysleft: Int, pace: Bool) {
        id = UUID()
        self.name = name
        self.daysleft = daysleft
        self.pace = pace
    }
}

private var budgets = [
    Budget(name: "Food", daysleft: 20, pace: true),
    Budget(name: "Car", daysleft: 17, pace: false)
]

struct BudgetTable: View {
    var body: some View {
            List(budgets) {
                Text($0.name)
//                Text($0.daysleft)
//                Text($0.pace)
                }
            }
        }



struct BudgetTable_Previews: PreviewProvider {
    static var previews: some View {
        BudgetTable()
    }
}
