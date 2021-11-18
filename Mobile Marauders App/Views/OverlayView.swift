//
//  OverlayView.swift
//  Mobile Marauders App
//
//  Created by Ian M on 11/18/21.
//

import SwiftUI

struct OverlayView: View {
    @State var showOverlay = false
    var body: some View {
        Button("Trigger action") {
            //the trigger must set the showOverlay to true
            showOverlay = true
        }
            .popover(isPresented: $showOverlay) {
                Picker(selection: .constant(0), label: Text("Picker")) {
                    Text("").tag(0)
                    Button("Item1") {
                        //any item actions go here
                        
                        showOverlay = false
                    }.padding(.vertical, 5.0)
                    .tag(1)
                    Button("Item2") {
                        
                        showOverlay = false
                    }.padding(.vertical, 5.0)
                    .tag(2)
                    Button("Item3") {
                        
                        showOverlay = false
                    }.padding(.vertical, 5.0)
                    .tag(3)
            }
        }
    }
}

struct OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        OverlayView()
    }
}
