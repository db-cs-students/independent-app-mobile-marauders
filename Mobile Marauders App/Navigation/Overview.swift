//
//  Overview.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/23/21.
//

import SwiftUI

struct Overview: View {
    @EnvironmentObject var data : Data
    var values: [Double]
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                Text("Money Available:")
                    .font(.title2)
                    .padding(.bottom, 5)
                Text("$\(values[0], specifier: "%.0f")")
                    .font(.title2)
                    .bold()
                PieChart(values: values, colors: [Color("PiePercentage"), Color("Red"), Color(.red), Color("Pink")], names: ["Available", "Car", "House", "Phone"], backgroundColor: Color("Background"), innerRadiusFraction: 0.54)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Overview_Previews: PreviewProvider {
    static let values: [Double] = [1000, 400, 450, 200]
    static var previews: some View {
        Overview(values: values)
            .environmentObject(Data())
    }
}
