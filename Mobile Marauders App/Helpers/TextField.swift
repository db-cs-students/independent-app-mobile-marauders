//
//  TextField.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/17/21.
//

import SwiftUI


struct CustomTextField: View {
    let leadingString : String
    let caption : String
    @State var text : String
    var body: some View {
        VStack(alignment: .leading) {
            Text(leadingString)
            HStack {
                TextField(caption, text : $text)
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

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(leadingString: "You are:", caption: "dumbstupid", text: "Dumb")
    }
}
