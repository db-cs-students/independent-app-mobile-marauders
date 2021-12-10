//
//  Mobile_Marauders_AppApp.swift
//  Mobile Marauders App
//
//  Created by Logan L on 11/12/21.
//

import SwiftUI

@main
struct Mobile_Marauders_AppApp: App {
    @StateObject private var data = Data()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(data)
        }
    }
}
