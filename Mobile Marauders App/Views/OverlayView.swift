//
//  OverlayView.swift
//  Mobile Marauders App
//
//  Created by Ian M on 11/18/21.
//

import SwiftUI

// OverlayView has parameters it will require a bound "selection:" as a default selection of data and an array of data as "items:"
struct OverlayView: View {
    @Binding var selection: String
    let items: [String]
    
    var body: some View {
        //to overlay this use the (.overlay(View)) with the overlayView as it's view(with it's parameters) in the spot you would like to overlay it in
        
            Picker(selection: $selection, label: Text("Picker")) {
                ForEach(items,id: \.self){
                    Text($0)
                }
            }
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView(selection: .constant("Item 1"), items: ["item1", "item2", "item3"])
    }
}
