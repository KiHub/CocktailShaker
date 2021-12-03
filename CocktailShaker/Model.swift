//
//  Model.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import UIKit
import Alamofire

//var drinks = [Drink]()

let key = "1f81e8e1"

let randomNumber = Int.random(in: 0000000...4513678)

struct CoctailManager {
  //  var returned = CocktailResults.
    
  //  var gkass: CocktailResults
    
  //  var onCompletion: ((CocktailResults) -> Void)?
//    class Drinks  {
//        struct Returned: Codable {
//            var drinks: [Drink]
//            
//        }
//        struct Drink: Codable {
//            var strDrink = ""
//           // var strDrinkThumb: String?
//            //   var strInstructions: String?
//        }
//        //var drinkArray: [Drink] = []
//        
//    }
    func getNewCoctail() {
        
        
        
        let urlString = "http://www.omdbapi.com/?i=tt4513678&apikey=1f81e8e1"
        
        
        guard let url = URL(string: urlString) else { return }
            let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { (data, response, error) in
         
                
                if let safeData = data {
                 self.parseJson(with: safeData)
                  
                    
               //     self.onCompletion?(gkass)
                    
                 //  var newCoctail =
                    }
                   
                
            }.resume()
            
        
}
        func parseJson(with data: Data)  {
        let decoder = JSONDecoder()
        do {
        
          let  movie =  try decoder.decode(Movie.self, from: data)
            print(  "Here! \(movie.actors) " )
         //   self.onCompletion?(gkass)
          //  print(  cocktailResults.yourDrinks.strDrink)
          //  print(cocktailResults.drinks)
          //  drinks
        //    print("Hey", drinks)
          //  print(drinks.count)
         //   var drinkArray: [Drinks.Drink] = returned
          //  print(drinkArray)
          //  print(drinkArray.count)
        //    completion(.success(self.cocktailResults!))
         //   print(returned.count)
            
         //   print(Drink.init(strDrink: drinks)
        // print(drinks[section].strDrink)
            
          //  print("Heyhey", currentCoctailData.strDrink ?? "Error")
          //  drinkArray = drinkArray + currentCoctailData.drinks
          //  print(currentCoctailData.drinks)
          //  print(currentCoctailData.drinks)
            
         //   print(currentCoctailData.)
          //  print(drinkArray)
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
}
