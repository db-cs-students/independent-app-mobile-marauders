//
//  New User.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/15/21.
//

import SwiftUI

struct New_User: View {
    @State var newUsername : String = ""
    @State var newPassword : String = ""
    @State var confirmedPassword : String = ""
    var body: some View {
        VStack(alignment: .leading) {
            Text("Username:")
            TextField("Username", text : $newUsername)
                .disableAutocorrection(true)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .shadow(radius: 2, y:2)
                )
                .padding()
            Text("Password:")
            SecureField("Password", text : $newPassword)
                .disableAutocorrection(true)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .shadow(radius: 2, y:2)
                )
                .padding()
            Text("Confirm Password:")
            SecureField("Confirm Password", text : $confirmedPassword)
                .disableAutocorrection(true)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10)
                                .fill(Color.white)
                                .shadow(radius: 2, y:2)
                )
                .padding()
            Spacer()
            if newPassword == confirmedPassword && confirmedPassword != "" && newPassword != "" {
                Text("The Passwords are equal.")
                    .padding()
            }
            
        }
        .padding()
    }
}

struct New_User_Previews: PreviewProvider {
    static var previews: some View {
        New_User()
    }
}
