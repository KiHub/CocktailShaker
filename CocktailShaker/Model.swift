//
//  Model.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import UIKit

//var drinks = [Drink]()



struct CoctailManager {
    class Drinks  {
        struct Returned: Codable {
            var drinks: [Drink]
            
        }
        struct Drink: Codable {
            var strDrink = ""
           // var strDrinkThumb: String?
            //   var strInstructions: String?
        }
        //var drinkArray: [Drink] = []
        
    }
    func getNewCoctail() {
        
        let urlString = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
        
        
        guard let url = URL(string: urlString) else { return }
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
         
                
                if let safeData = data {
                    self.parseJson(with: safeData)
                   
                   
                }
            }.resume()
            
        
}
    func parseJson(with data: Data)  {
        let decoder = JSONDecoder()
        do {
        
            let returned = try decoder.decode(DrinksResults.self, from: data)
          //  print(  cocktailResults.yourDrinks.strDrink)
          //  print(cocktailResults.drinks)
          //  drinks
        //    print("Hey", drinks)
          //  print(drinks.count)
         //   var drinkArray: [Drinks.Drink] = returned
          //  print(drinkArray)
          //  print(drinkArray.count)
        //    completion(.success(self.cocktailResults!))
            print(returned.drinks)
            
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
