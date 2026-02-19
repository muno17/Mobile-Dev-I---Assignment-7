//
//  ViewController.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/19/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var planets = [
        Planet("Mercury", "~36 million"),
        Planet("Venus", "~67 million"),
        Planet("Earth", "~93 million"),
        Planet("Mars", "~142 million"),
        Planet("Jupiter", "~484 million"),
        Planet("Saturn", "~890 million"),
        Planet("Uranus", "~1.8 billion"),
        Planet("Neptune", "~2.8 billion"),
        Planet("Pluto", "~3.7 billion")
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = planets[indexPath.row].planet
        content.secondaryText = planets[indexPath.row].distance
        cell.contentConfiguration = content
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

