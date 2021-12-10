//
//  Tab.swift
//  Mobile Marauders App
//
//  Created by Ian M on 12/10/21.
//

import SwiftUI

struct Tab: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("Pink"))
      }

    var body: some View {
        ZStack {
            TabView {
//                Overview(values: values)
//                    .environmentObject(Data())
//                    .tabItem {
//                    Label("Overview", systemImage: "list.dash")
//                }
                BudgetTable()
                    .tabItem {
                        Label("Budgets", systemImage: "dollarsign.square.fill")
                }
                Payments()
                    .environmentObject(Data())
                    .tabItem {
                        Label("Payments", systemImage: "creditcard.fill")
                }
                
            }
            .accentColor(Color.init(red: 250.0 / 255.0, green: 244.0 / 255.0, blue: 235.0 / 255.0))
            
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}

