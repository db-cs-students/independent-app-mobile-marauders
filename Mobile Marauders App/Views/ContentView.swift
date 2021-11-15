//
//  ContentView.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            Login_Screen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
