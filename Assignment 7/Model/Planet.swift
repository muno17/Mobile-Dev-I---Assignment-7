//
//  Planet.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/19/26.
//

import Foundation

struct Planet {
    var name: String
    var distance: String
    var mass: Float
    var temperature: Int
    var orbit: String
    var gravity: Float
    var fact: String
    var type: String
    
    init(_ planet: String, _ distance: String, _ mass: Float, _ temperature: Int, _ orbit: String, _ gravity: Float, _ fact: String, _ type: String) {
        self.name = planet
        self.distance = distance
        self.mass = mass
        self.temperature = temperature
        self.orbit = orbit
        self.gravity = gravity
        self.fact = fact
        self.type = type
    }
}
