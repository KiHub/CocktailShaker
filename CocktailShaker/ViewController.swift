//
//  ViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 22.11.2021.
//

import UIKit
import Alamofire
import SDWebImage

var titleFromMovie = ""
var plotFromMovie = ""
var imageFromMovie = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var shake: UIButton!
    
    @IBOutlet weak var instructionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   title = "It’s shaker"
        
        fetchMovieWithAlamofire()
        instructionLabel.layer.cornerRadius = 15
        instructionLabel.layer.masksToBounds = true
    }
    
    @IBAction func shakeButton(_ sender: UIButton) {
        
        fetchMovieWithAlamofire()
    }
    
    func randomFilmId() -> String {
        
        let names = ["0910970", "1049413", "0088763"].shuffled()
        let randomName = names.randomElement() ?? ""
        print(randomName)
        return randomName
    }
    
    func fetchMovieWithAlamofire() {
        
        
        let randomName = randomFilmId()
        let request = AF.request("https://www.omdbapi.com/?i=tt\(randomName)&apikey=\(key)")
        request.responseDecodable(of: Movie.self) { (response) in
            guard let movie = response.value else { return }
            titleFromMovie = movie.title
            plotFromMovie = movie.plot
            imageFromMovie = movie.poster
            print("FILM:",movie.poster)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tableVC = segue.destination as? TableViewController  else { return }
        tableVC.titleMovie = titleFromMovie
        tableVC.plotMovie = plotFromMovie
        tableVC.imageMovie = imageFromMovie
        print("IMG",imageFromMovie)
    }
    
}

