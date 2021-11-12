//
//  Login Screen.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI

var password : String = ""

struct Login_Screen: View {
    @State var username : String = "a"
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        TextField("User name", text : $username)
    }
}

struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
