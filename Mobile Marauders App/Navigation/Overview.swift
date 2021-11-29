//
//  Overview.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/23/21.
//

import SwiftUI

struct Overview: View {
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            PieChart(values: [300, 400, 450, 200], colors: [Color("PiePercentage"), Color("Red"), Color(.red), Color("Pink")], names: ["Available", "Bills", "House", "Subscriptions"], backgroundColor: Color("Background"), innerRadiusFraction: 0.52)
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Overview_Previews: PreviewProvider {
    static var previews: some View {
        Overview()
    }
}
