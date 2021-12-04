//
//  TitleCell.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 03.12.2021.
//

import UIKit

class TitleCell: UITableViewCell {

    var movieGenerator = MovieGenarator()
    @IBOutlet weak var title: UILabel!
    
    func setTitle() {
        movieGenerator.onCompletion = { movie in
           // print(movie.title)
            print("Hello1", movie.title)
            self.title.text = movie.title
           
            
            
        }
    }


}


