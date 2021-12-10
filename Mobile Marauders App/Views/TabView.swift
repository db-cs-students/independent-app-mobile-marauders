//
//  TabView.swift
//  Mobile Marauders App
//
//  Created by Ian M on 12/9/21.
//

import SwiftUI

struct Tab: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemPink
      }

    var body: some View {
        ZStack {
            TabView {
                ContentView()
                    .tabItem {
                    Label("Overview", systemImage: "list.dash")
                }
                GButton()
                    .tabItem {
                        Label("a thing", systemImage: "")
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
