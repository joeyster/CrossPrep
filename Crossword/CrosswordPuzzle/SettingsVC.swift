//
//  ViewController.swift
//  Crossword2
//
//  Created by Joey Liao on 4/16/19.
//  Copyright © 2019 Joey Liao. All rights reserved.
//

import UIKit

class SettingsVC: UIViewController {
    
    @IBOutlet var hintSwitch: UISwitch!
    var hintMode: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hintSwitch.setOn(hintMode!, animated: false)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? BoardViewController
        if segue.identifier == "backSegue"{
            vc?.hintMode = hintSwitch.isOn
            UserDefaults.standard.set(hintSwitch.isOn, forKey: "hintsBool")
        }
    }
}
