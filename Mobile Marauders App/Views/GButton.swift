//
//  SwiftUIView.swift
//  Mobile Marauders App
//
//  Created by Ian M on 11/12/21.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var nav = false
    var body: some View {
            NavigationView {
                NavigationLink(
                    destination: ContentView(),
                    label: {
                        ZStack {
                            Color.init(red: 255/255, green: 174/255, blue: 174/255)
                                .frame(width: 270, height: 50)
                                .cornerRadius(50.0)
                                .shadow(radius: 8)
                            Text("Button")
                                .font(.title2)
                                .foregroundColor(Color.black)
                            }
                        })
                    }
                }
            }
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

