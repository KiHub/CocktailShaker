//
//  ViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 22.11.2021.
//

import UIKit
import Alamofire

var titleFromMovie = ""


class ViewController: UIViewController {

    @IBOutlet weak var shake: UIButton!
    
    @IBOutlet weak var instructionLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "It’s shaker"
        fetchMovieWithAlamofire()
        
        
    }


    @IBAction func shakeButton(_ sender: UIButton) {
        
  
        
        
    }
    
    func fetchMovieWithAlamofire() {
     
        
        
        let names = ["0910970", "1049413", "0088763"]
        let randomName = names.randomElement() ?? ""
        print(randomName)
        
        let request = AF.request("https://www.omdbapi.com/?i=tt\(randomName)&apikey=\(key)")
           
        request.responseDecodable(of: Movie.self) { (response) in
            guard let movie = response.value else { return }
            titleFromMovie = movie.title
         //   self.delegate?.updateTable(self, with: movie)
            print("FILM:",titleFromMovie)
         //   print(movie.actors)
           // self.onCompletion?(movie)
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableVC = segue.destination as? TableViewController  else { return }
       tableVC.titleMovie = titleFromMovie
        print(titleFromMovie)
    }
    
}

