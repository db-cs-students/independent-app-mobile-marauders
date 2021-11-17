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
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack(alignment: .leading) {
                CustomTextField(leadingString: "Username:", caption: "Username", text: newUsername)
                CustomTextField(leadingString: "Password:", caption: "Password", text: newPassword)
                CustomTextField(leadingString: "Confirm Password:", caption: "Confirm", text: confirmedPassword)
                Spacer()
                
                if newPassword == confirmedPassword && confirmedPassword != "" && newPassword != "" {
                    if confirmedPassword.count < 10 {
                        Text("The password is not long enough.")
                            .padding()
                    } else {
                        VStack {
                            Text("The passwords are equal and secure.")
                                .padding()
                                .padding(.bottom, 40)
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
                        }
                        
                    }
                    
                }
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
