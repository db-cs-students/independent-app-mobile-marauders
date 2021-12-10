//
//  Login Screen.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
// Credit Image Source: https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngaaa.com%2Fdetail%2F109128&psig=AOvVaw1PGTs84sItP6tfXslpfQb_&ust=1639242056726000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLDemNfa2fQCFQAAAAAdAAAAABAD

import SwiftUI


struct Login_Screen: View {
    @State var username : String = ""
    @State var password : String = ""
    @EnvironmentObject var data: Data
    var body: some View {
        ZStack {
            Color("Background").ignoresSafeArea()
            VStack {
                Image("Dollar")
                    .resizable()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                    .frame(width: 200, height: 200)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
                
                CustomTextField(title: "Username:", preview: "Username", text: $username)
                CustomTextField(title: "Password:", preview: "Password", text: $password)
                
                Spacer()
                
                HStack {
                    NavigationLink(destination: Overview(values: [data.currentBalance, 300, 350, 500])){
                        Text("Log In")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                            .shadow(radius: 2, y:2)
                            )
                    }
                    .padding()
                    NavigationLink(destination: New_User()){
                        Text("Create Account")
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.black)
                            .background(RoundedRectangle(cornerRadius: 10)
                                            .fill(Color("Pink"))
                                            .shadow(radius: 2, y:2)
                            )
                    }
                    .padding()
                    
                }
                .padding(.bottom, 100)
            }
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
            .environmentObject(Data())
    }
}
