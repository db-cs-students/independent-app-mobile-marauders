//
//  TabView.swift
//  Mobile Marauders App
//
//  Created by Ian M on 12/9/21.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        NavigationView {
        ZStack {
            Color.init(red: 255.0 / 255.0, green: 174.0 / 255.0, blue: 174.0 / 255.0)
            HStack {
                NavigationLink(destination: ContentView()) {
                    VStack {
                    Image(systemName: "dollarsign.square.fill")
                        .font(.system(size: 35))
                        Text("Budgets")
                    }
                }
                .frame(width: 70, height: 50)
                .foregroundColor(.black)
                NavigationLink(destination: ContentView()) {
                    VStack {
                    Image(systemName: "creditcard")
                        .font(.system(size: 30))
                        Text("Payments")
                    }
                    .frame(width: 80, height: 50)
                    .foregroundColor(.black)
                }
                NavigationLink(destination: ContentView()) {
                    VStack {
                    Image(systemName: "chart.bar.xaxis")
                        .font(.system(size: 35))
                        Text("Overview")
                    }
                    .frame(width: 80, height: 50)
                    .foregroundColor(.black)
                }
                NavigationLink(destination: ContentView()) {
                    VStack {
                    Image(systemName: "lightbulb")
                        .font(.system(size: 30))
                        Text("Advice")
                    }
                    .frame(width: 60, height: 50)
                    .foregroundColor(.black)
                    }
                }
            }
        .frame(width: 320, height: 60, alignment: .bottom)
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
