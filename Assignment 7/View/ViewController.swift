//
//  ViewController.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/19/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var planetTable: UITableView!
    
    var planetDetails = PlanetDetails()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planetDetails.planets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = planetDetails.planets[indexPath.row].name
        content.secondaryText = planetDetails.planets[indexPath.row].type
        content.textProperties.color = .white
        content.secondaryTextProperties.color = .lightGray
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let selectedPlanet = planetDetails.planets[indexPath.row]
            performSegue(withIdentifier: "showDetail", sender: selectedPlanet)
            tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        planetTable.delegate = self
        planetTable.dataSource = self
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail",
               let navigation = segue.destination as? PlanetInfoView {
                
                // get the clicked row
                if let indexPath = planetTable.indexPathForSelectedRow {
                    // pass the correct planet via segue
                    let selectedPlanet = planetDetails.planets[indexPath.row]
                    navigation.planet = selectedPlanet
                }
            }
    }

}

