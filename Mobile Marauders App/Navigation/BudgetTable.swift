//
//  BudgetTable.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/30/21.
//

import SwiftUI

struct BudgetTable: View {
    @EnvironmentObject var data : Data
    var body: some View {
        Text("oh yueah")
    }
}

struct BudgetTable_Previews: PreviewProvider {
    static var previews: some View {
        BudgetTable()
            .environmentObject(Data())
    }
}
