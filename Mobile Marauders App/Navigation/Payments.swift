//
//  Payments.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/29/21.
//

import SwiftUI

struct Payments: View {
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                Text("$ Due Today")
                Spacer()
                Text("$ Due This Week")
            }
        }
    }
}

struct Payments_Previews: PreviewProvider {
    static var previews: some View {
        Payments()
    }
}
