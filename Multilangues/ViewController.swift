//
//  ViewController.swift
//  Multilangues
//
//  Created by Snoopy on 22/04/2019.
//  Copyright © 2019 EMANET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultatLabel: UILabel!
    @IBOutlet weak var pressButton: UIButton!
    
    var numberPressed = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pressButton.layer.cornerRadius = pressButton.frame.width / 2
        pressButton.layer.borderColor = UIColor.white.cgColor
        pressButton.layer.borderWidth = 10
        updateLabel()
        
        
    }
    
    func updateLabel() {
        // TERMINAL
        //genstrings *swift
        // dans le dossier du projet pour générer les fichiers Localizable.strings
        
        // avec argument
        let base_Text = String(format: NSLocalizedString("ViewController.resultatLabel", comment: "Result label base"), String(numberPressed))
        resultatLabel.text = base_Text
        
        // sans argument
        //let base_Text = NSLocalizedString("ViewController.resultatLabel", comment: "Result label base")
        //resultatLabel.text = base_Text + String(numberPressed)
        
    }


    @IBAction func pressButtonPressed(_ sender: Any) {
        numberPressed += 1
        updateLabel()
    }
    @IBAction func resetButtonPressed(_ sender: Any) {
        numberPressed = 0
        updateLabel()
    }
}

