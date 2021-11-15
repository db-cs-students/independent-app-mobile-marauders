//
//  EditButton.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/12/21.
//

import SwiftUI


struct EditButton: View {
    var body: some View {
        Button(action: {}) {
            ZStack {
                Color("Pink")
                Image(systemName: "highlighter")
                    .resizable()
                    .foregroundColor(.black)
                    .padding(.all, 8.0)
            }
            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
        
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}

