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
                    Button(action: {nav.toggle()}) {
                        ZStack {
                            Color.init(red: 255.0 / 255.0, green: 174.0 / 255.0, blue: 174.0 / 255.0)
                            Text("Button")
                                .font(.title)
                                .foregroundColor(Color.black)
                        }
                    }
                    .frame(width: 270, height: 50)
                    .cornerRadius(50.0)
                    .shadow(radius: 8)
            
                if nav {
                    NavigationLink(destination: Text("Second View")) {
                    Text("Navigation")
                    }
                }
            }
        }
    }
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
