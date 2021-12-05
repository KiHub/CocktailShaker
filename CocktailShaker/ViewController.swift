//
//  ViewController.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 22.11.2021.
//

import UIKit
import Alamofire
import SDWebImage
import Spring


var titleFromMovie = ""
var plotFromMovie = ""
var imageFromMovie = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var shake: SpringButton!
    
    @IBOutlet weak var instructionLabel: SpringLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   title = "It’s shaker"
        instructionLabel.animation = "morph"
        instructionLabel.curve = "spring"
        instructionLabel.duration =  3.0
        instructionLabel.animate()
      
        
        fetchMovieWithAlamofire()
        instructionLabel.layer.cornerRadius = 15
        instructionLabel.layer.masksToBounds = true
        
        becomeFirstResponder()
    }
    
    @IBAction func shakeButton(_ sender: SpringButton) {
      
     
        fetchMovieWithAlamofire()
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            fetchMovieWithAlamofire()
           
            performSegue(withIdentifier: "segue", sender: nil)
        }
    }
    
    
    func randomFilmId() -> String {
        
        let names = ["0910970", "1049413", "0088763", "0068646", "0110912", "0109830", "0167261", "0133093", "0110413", "0152930", "0110413", "0119116", "0376136", "0096283", "0347149", "0876563", "0088247"].shuffled()
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

