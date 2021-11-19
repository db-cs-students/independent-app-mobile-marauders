//
//  ContentView.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Login_Screen()
            .navigationBarTitle("")
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
