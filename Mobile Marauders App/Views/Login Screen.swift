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
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                Image("Dollar")
                    .resizable()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 0.35))
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 40)
                VStack {
                    Text("Username:")
                    TextField("Username", text : $username)
                        .disableAutocorrection(true)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .shadow(radius: 2, y:2)
                        )
                }
                .padding()
                VStack {
                    Text("Password:")
                    SecureField("Password", text : $password)
                        .disableAutocorrection(true)
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                        .shadow(radius: 2, y:2)
                        )
                }
                .padding()
                Text(username)
                    .padding()
                
                Text(password)
                    .padding()
                
                Spacer()
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Log In")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                    })
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Create Account")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                        
                    })
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("Pink"))
                                    .shadow(radius: 2, y:2)
                    )
                    .padding()
                    
                }
                .padding(.bottom, 40)
            }
        }
        
    }
}

struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
