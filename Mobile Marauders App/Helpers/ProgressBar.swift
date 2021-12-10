//
//  ProgressBar.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/15/21.
//
import SwiftUI
/*
This takes the total amount of money the user needs to pay off or has left and then divides the amount that he user currently has or needs to pay off by the total to get the percentage to change the size of the pink bar
*/

struct ProgressBar: View {
    let total: CGFloat
    let amount: CGFloat
    var percentage: CGFloat {
        amount / total
    }
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/15.0/*@END_MENU_TOKEN@*/)
                .frame(width: 250, height: 50)
                .shadow(radius: 3, x: 0, y: 3)
                .foregroundColor(Color("White"))
            ZStack(alignment: .leading) {
                 RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/15.0/*@END_MENU_TOKEN@*/)
                .frame(width: percentage * 250, height: 50, alignment: .leading)
                .foregroundColor(Color("Pink"))
                Text("\(percentage, specifier: "%.2f") % ")
                    .padding()
            }
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(total: 300, amount: 10)
    }
}
