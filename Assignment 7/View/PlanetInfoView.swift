//
//  PlanetInfoView.swift
//  Assignment 7
//
//  Created by Daniel Muñoz on 2/20/26.
//

import UIKit

class PlanetInfoView: UIViewController {
    var planet: Planet?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let p = planet {
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
