//
//  TextField.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/17/21.
//

import SwiftUI

// Creates a VStack with text displaying the title above the text field (constant title), and a text field below with preview data (constant preview) and text (binding text).
struct CustomTextField: View {
    let title : String
    let preview : String
    @Binding var text : String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            HStack {
                TextField(preview, text : $text)
                    .padding()
                    .disableAutocorrection(true)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
                
            }
        }
        .padding()
    }
}
// Creates a VStack with text displaying the title above the secure field (constant title), and a secure field below with preview data (constant preview) and text (binding text).
struct CustomSecureField: View {
    let title : String
    let preview : String
    @Binding var text : String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            HStack {
                SecureField(preview, text : $text)
                    .padding()
                    .disableAutocorrection(true)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
            }
        }
        .padding()
    }
}
// Creates a CustomTextField with the only exception being the input type being a number pad.
struct CustomNumberTextField: View {
    let title : String
    let preview : String
    @Binding var text : String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
            HStack {
                TextField(preview, text : $text)
                    .padding()
                    .keyboardType(.numberPad)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.white)
                                    .shadow(radius: 2, y:2)
                    )
                
            }
        }
        .padding()
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomTextField(title: "You are:", preview: "smart", text: .constant("dumb!"))
            CustomSecureField(title: "You are:", preview: "dumb!", text: .constant(""))
            CustomNumberTextField(title: "This time:", preview: "numbers", text: .constant(""))
        }
    }
}
