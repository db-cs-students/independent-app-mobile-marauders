//
//  Structs.swift
//  Mobile Marauders App
//
//  Created by Logan L on 12/2/21.
//

import Foundation

class Data: ObservableObject {
    @Published var payments: [Payment] = [Payment(name: "Car Payment", amount: 200.00, type: Type.Car), Payment(name: "House Payment", amount: 600.00, type: Type.House), Payment(name:"Phone Payment", amount: 125.00, type: Type.Phone)]
    @Published var budgets : [Budget] = []
    @Published var income : Double = 0
    @Published var expenses : Double = 0
}

enum Repeat : String, CaseIterable, Identifiable {
    case Daily
    case Weekly
    case Biweekly
    case Monthly
    case Yearly
    
    var id: String { self.rawValue }
}

enum Type : String, CaseIterable, Identifiable {
    case Car
    case House
    case Phone
    case Credit
    case Other
    
    var id: String { self.rawValue }
}

struct Budget: Hashable, Identifiable {
    var id : UUID = UUID()
    var name: String
    var amount : Double
    var repeatDate : Repeat
}

struct Payment: Hashable, Identifiable {
    var id: String { name }
    var name: String
    var amount: Double
    var type: Type
}