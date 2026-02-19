//
//  Planet.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/19/26.
//

import Foundation

struct Planet {
    var planet: String
    var distance: String
    
    init(_ planet: String, _ distance: String) {
        self.planet = planet
        self.distance = distance + " miles from the sun"
    }
}
