//
//  Login Screen.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI


struct Login_Screen: View {
    @State var username : String = ""
    @State var password : String = ""
    var body: some View {
        VStack {
            HStack {
                Text("Username:")
                TextField("Username", text : $username)
                    .disableAutocorrection(true)
            }
            .padding()
            HStack {
                Text("Password:")
                SecureField("Password", text : $password)
                    .disableAutocorrection(true)
            }
            .padding()
            Text(username)
                .padding()
            
            Text(password)
                .padding()
            HStack {
                Button(action: {
                    
                }, label: {
                    Text("Log In")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.black)
                })
                .border(Color("Pink"), width: 2)
                .padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Create Account")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.black)
                        
                })
                .background(Color("Pink"))
                .padding()
            }
        }
        .background(Color("Background"))
    }
}

struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
