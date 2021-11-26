//
//  Model.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import Foundation
var drinkArray: [CocktailResults] = []
var drinks = [Drink]()

struct CoctailManager {
    func getNewCoctail() {
        
        let urlString = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
        
        
        guard let url = URL(string: urlString) else { return }
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
         
                
                if let safeData = data {
                    self.parseJson(with: safeData)
                   
                   
                }
            }
            task.resume()
        
}
    func parseJson(with data: Data)  {
        let decoder = JSONDecoder()
        do {
        
            drinks = try decoder.decode(Drinks.self, from: data).drinks
          //  print(  cocktailResults.yourDrinks.strDrink)
          //  print(cocktailResults.drinks)
            print("Hey", drinks)
            print(drinks.count)
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
