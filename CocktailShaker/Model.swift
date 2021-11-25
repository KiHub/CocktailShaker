//
//  Model.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import Foundation

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
        let currentCoctailData = try decoder.decode(CurrentCoctail.self, from: data)
          //  print("Heyhey", currentCoctailData.strDrink ?? "Error")
            print(currentCoctailData.drinks)
            print()
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
}
