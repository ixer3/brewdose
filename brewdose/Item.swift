//
//  Item.swift
//  brewdose
//
//  Created by Hamad Alhosani on 09/11/2026.
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
