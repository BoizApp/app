//
//  Boiz.swift
//  Test
//
//  Created by Daniel Fore on 7/11/20.
//  Copyright © 2020 Daniel Fore. All rights reserved.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var name: String
    var drink: String
    var location: String
    var timestamp: String
    
    var imageName: String { return name }
}

let testData = [
    User(name: "Daniel", drink: "Bulleit Rye", location: "Streets Pub & Grub", timestamp: ""),
    User(name: "Chris", drink: "Buffalo Trace", location: "Tank House", timestamp: ""),
    User(name: "Helios", drink: "Milk", location: "Dan's House", timestamp: "")
]
