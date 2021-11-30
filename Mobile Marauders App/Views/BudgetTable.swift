//
//  BudgetTable.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/30/21.
//

import SwiftUI

struct Budget: Identifiable {
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
    Budget(name: "Food", daysleft: 20, pace: true)
]

struct BudgetTable: View {
    var body: some View {
        Table(budgets)  {
            TableColumn("Given Name", value: \.givenName)
                    TableColumn("Family Name", value: \.familyName)
        }
    }
}

struct BudgetTable_Previews: PreviewProvider {
    static var previews: some View {
        BudgetTable()
    }
}
