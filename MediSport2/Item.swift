//
//  Item.swift
//  MediSport2
//
//  Created by Claire Chan on 29/5/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
