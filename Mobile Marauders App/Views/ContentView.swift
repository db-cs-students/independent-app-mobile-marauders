//
//  ContentView.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var pet: String = "Cat"
    @State var food: String = "Apple"
    let pets = ["cat", "dog"]
    let foods = ["apple", "banana"]
    
    var body: some View {
        VStack {
            
            Text("My favorite food is \(food) and my pet is \(pet)")
                .overlay(OverlayView(selection: $pet, items: pets))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
