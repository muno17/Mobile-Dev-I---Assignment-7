//
//  PlanetDetails.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/20/26.
//

import Foundation

struct PlanetDetails {
    var planets = [
        Planet("Mercury", "36 million", 0.055, 333, "88 Days", 3.7, "A day on Mercury (sunrise to sunrise) lasts 176 Earth days, longer than its year (88 days)."),
        Planet("Venus", "67 million", 0.815, 867, "225 Days", 8.87, "It rotates backward compared to most planets, meaning the sun rises in the west."),
        Planet("Earth", "93 million", 1.00, 59, "365.25 Days", 9.81, "It is the only known planet not named after a Greek or Roman god or goddess."),
        Planet("Mars", "142 million", 0.107, -85, "687 Days", 3.71,"Home to Olympus Mons, the largest volcano in the solar system—it's three times the height of Everest."),
        Planet("Jupiter", "484 million", 317.8, -166, "12 Years", 24.79, "Its \"Great Red Spot\" is a giant storm that has been raging for at least 300 years and is larger than Earth."),
        Planet("Saturn", "890 million", 95.2, -220, "29 Years", 10.44, "It is the least dense planet; if you had a bathtub big enough, Saturn would actually float in water."),
        Planet("Uranus", "1.8 billion", 14.5, -320, "84 Years", 8.69, "It rotates on its side (98-degree tilt), likely due to a massive collision in its distant past."),
        Planet("Neptune", "2.8 billion", 17.1, -330, "165 Years", 11.15, "It has the strongest winds in the solar system, reaching speeds of over 1,200 mph."),
        Planet("Pluto", "3.7 billion", 0.002, -373, "248 Years", 0.62, "It has a \"heart\" on its surface—a giant glacier made of nitrogen ice called Tombaugh Regio.")
    ]
}
