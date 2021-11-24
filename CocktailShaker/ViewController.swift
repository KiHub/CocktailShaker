//
//  ViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var shake: UIButton!
    
    @IBOutlet weak var instructionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "It’s shaker"
    }


    @IBAction func shakeButton(_ sender: UIButton) {
    }
}

