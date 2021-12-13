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
    
    
    func validatePasswords() -> Bool {
        if newPassword == confirmedPassword && newPassword.count > 10 {
            return true
        } else {
            return false
        }
    }
    
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                CustomTextField(title: "Username:", preview: "Username", text: $newUsername)
                CustomSecureField(title: "Password:", preview: "Password", text: $newPassword)
                CustomSecureField(title: "Confirm Password:", preview: "Confirm", text: $confirmedPassword)
                NavigationLink(
                    destination: Login_Screen(),
                    label: {
                        Text("Back")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                            .shadow(radius: 2, y:2)
                            )
                            .padding()
                    })
                Spacer()
                Text(validatePasswords() ? "Good to go." : "Validating...")
                NavigationLink(
                    destination: Questions(),
                    label: {
                        Text("Questions")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color("Pink"))
                                            .shadow(radius: 2, y:2)
                            )
                            .padding()
                    })
                    .disabled(!validatePasswords())
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
    
}


struct New_User_Previews: PreviewProvider {
    static var previews: some View {
        New_User()
    }
}
