//
//  ViewController.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/19/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var planetTable: UITableView!
    
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
        content.text = planets[indexPath.row].name
        content.secondaryText = planets[indexPath.row].distance + " miles from the sun"
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (_,_,_) in
            print("Deleted" + self.planets[indexPath.row].name)
            self.planets.remove(at: indexPath.row)
            tableView.reloadData()
        }
        
        let config = UISwipeActionsConfiguration(actions: [deleteAction])
        config.performsFirstActionWithFullSwipe = false
        return config
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1. Identify which item was clicked
            let selectedPlanet = planets[indexPath.row]
            
            // 2. Trigger the segue you created in Storyboard
            performSegue(withIdentifier: "showDetail", sender: selectedPlanet)
            
            // 3. Optional: Deselect the row so it doesn't stay gray
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
                
                // 2. Ask the table which row was clicked
                if let indexPath = planetTable.indexPathForSelectedRow {
                    // 3. Get the planet from your array using that index
                    let selectedPlanet = planets[indexPath.row]
                    
                    // 4. Pass it over
                    navigation.planet = selectedPlanet
                }
            }
    }

}

