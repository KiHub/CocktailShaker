//
//  Model.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import Foundation
var drinkArray: [CocktailResults] = []
struct CoctailManager {
    func getNewCoctail() {
        
        let urlString = "https://www.thecocktaildb.com/api/json/v1/1/random.php"
        
        
        guard let url = URL(string: urlString) else { return }
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
         
                
                if let safeData = data {
                    self.parseJson(with: safeData)
                  // drinkArray = drinkArray + current
                   
                }
            }
            task.resume()
        
}
    func parseJson(with data: Data)  {
        let decoder = JSONDecoder()
        do {
        let currentCoctailData = try decoder.decode(CurrentCoctail.self, from: data)
          //  print("Heyhey", currentCoctailData.strDrink ?? "Error")
            drinkArray = drinkArray + currentCoctailData.drinks
          //  print(currentCoctailData.drinks)
          //  print(currentCoctailData.drinks)
            print(drinkArray)
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
}
