//
//  PlanetInfoView.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/20/26.
//

import UIKit

class PlanetInfoView: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var gravityLabel: UILabel!
    @IBOutlet weak var orbitLabel: UILabel!
    @IBOutlet weak var funFactLabel: UILabel!
    var planet: Planet?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateLabels()
    }
    
    func updateLabels() {
        if let p = planet {
            nameLabel.text = p.name
            distanceLabel.text = p.distance + " mi"
            if p.type == "Planet" {
                massLabel.text = String(format: "%.3f",p.mass)
            } else {
                massLabel.text = String(format: "%.6f",p.mass)
            }
            tempLabel.text = String(format: "%i°",p.temperature)
            gravityLabel.text = String(format: "%.2f m/s²",p.gravity)
            orbitLabel.text = p.orbit
            funFactLabel.text = p.fact
            
        }
    }
    

    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
