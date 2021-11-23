//
//  RecipeViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 23.11.2021.
//

import UIKit

class RecipeViewController: UIViewController {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    

    @IBOutlet weak var recip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Especially for you:"
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
