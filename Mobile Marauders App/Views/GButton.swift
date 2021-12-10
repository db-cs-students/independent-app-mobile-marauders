//
//  SwiftUIView.swift
//  Mobile Marauders App
//
//  Created by Ian M on 11/12/21.
//

import SwiftUI

//make sure to to wrap your all of your content in a navigation view when implementing a button

struct GButtonView: View {
    @State var name: String
    @State var nav: AnyView
    var body: some View {
                NavigationLink(
                    destination: nav,
                    label: {
                        ZStack {
                            Color.init(red: 250/255, green: 244/255, blue: 235/255)
                                .ignoresSafeArea()
                            Color.init(red: 255/255, green: 174/255, blue: 174/255)
                                .frame(width: 200, height: 50)
                                .cornerRadius(50.0)
                                .shadow(radius: 8)
                            Text("\(name)")
                                .font(.title2)
                                .foregroundColor(Color.black)
                            }
                        })
        
            //.frame(width: 250, height: 250)
            }
        }

struct GButtonView_Previews: PreviewProvider {
    static var previews: some View {
        //make sure to wrap the view your navigating to in a 'AnyView' to work
        NavigationView {
        GButtonView(name: "Button", nav: AnyView(ContentView()))
        }
    }
}

