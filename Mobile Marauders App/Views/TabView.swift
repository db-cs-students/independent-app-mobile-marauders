//
//  TabView.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/18/21.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        TabView {
           Text("Budgets")
            .tabItem { Image(systemName: "banknote.fill")
                Text("Budgets")
                }
            Text("Payments")
                .tabItem { Image(systemName: "creditcard.fill")
                    Text("Payments")
                }
            Text("Overview")
                .tabItem { Image(systemName: "book.fill")
                    Text("Overview")
                }
            Text("Advice")
                .tabItem { Image("lightbulb")
                    Text("Overview")
                }
            
            
            
    }
}
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
