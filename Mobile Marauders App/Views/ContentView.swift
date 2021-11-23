//
//  ContentView.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack {
                Text("Featured Articles :")
                Link("8 Financial Tips for Young Adults", destination: URL(string: "https://www.investopedia.com/articles/younginvestors/08/eight-tips.asp")!)
                    .padding()
                Link("50 Personal Finance Tips That Will Change the Way You Think About Money", destination: URL(string: "https://www.themuse.com/advice/50-personal-finance-tips-that-will-change-the-way-you-think-about-money")!)
                    .padding()
                Link("How to Start Investing in Stocks: A Beginner's Guide", destination: URL(string: "https://www.investopedia.com/articles/basics/06/invest1000.asp")!)
                    .padding()
                Spacer()
            }
            .padding()
            VStack {
                Text("Challenges :")
                    .padding()
                VStack(alignment: .leading) {
                    Text("No Monthly Budget Overdraft :")
                        .padding(.bottom)
                    Text("8 Days Remaining")
                        .padding(.bottom)
                    Text("Log-in Streak: 20 Days")
                    Spacer()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
