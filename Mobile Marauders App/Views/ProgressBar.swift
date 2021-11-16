//
//  ProgressBar.swift
//  Mobile Marauders App
//
//  Created by Grant M on 11/15/21.
//

import SwiftUI

struct ProgressBar: View {
    var body: some View {
        ZStack(alignment: .leading) {
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/15.0/*@END_MENU_TOKEN@*/)
            .frame(width: 250, height: 50)
            .shadow(radius: 3, x: 0, y: 3)
            .foregroundColor(Color("White"))
            
        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/15.0/*@END_MENU_TOKEN@*/)
            .frame(width: 200, height: 50, alignment: .leading)
            .foregroundColor(Color("Pink"))
        

        }
            
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar()
    }
}
