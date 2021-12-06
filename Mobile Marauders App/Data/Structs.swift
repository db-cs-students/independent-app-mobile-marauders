//
//  Structs.swift
//  Mobile Marauders App
//
//  Created by Logan L on 12/2/21.
//

import Foundation

public var amountTotal : Double = 0
public var amountRemaining : Double = 0

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
    var id : String { name }
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
