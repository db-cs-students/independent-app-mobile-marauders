//
//  TabBar.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/17/21.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 320, height: 60)
                .foregroundColor(Color("Pink"))
            HStack {
                VStack{
                    Image(systemName: "banknote.fill")
                    Text("Budgets").font(.system(size: 14))
                }
                .padding(.trailing)
                VStack {
                    Image(systemName: "creditcard.fill")
                    Text("Payments").font(.system(size: 14))
                }
                VStack {
                    Image(systemName: "book.fill")
                    Text("Overview").font(.system(size: 14))
                }
                VStack {
                    Image(systemName: "lightbulb")
                    Text("Advice").font(.system(size: 14))
                }
            }
        }    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
