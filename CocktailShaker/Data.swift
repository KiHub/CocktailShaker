//
//  Data.swift
//  CocktailShaker
//
//  Created by  Mr.Ki on 24.11.2021.
//

import Foundation


//struct DrinkData: Decodable {
//    let strDrink: String
//    let strInstructions: String
//    let strDrinkThumb: String
//    let strIngredient1: String
//    let strIngredient2: String
//    let strIngredient3: String
//    let strIngredient4: String
//    let strIngredient5: String
//    let strIngredient6: String
//    let strIngredient7: String
//    let strIngredient8: String
//    let strIngredient9: String
//    let strIngredient10: String
//    let strMeasure1: String
//    let strMeasure2: String
//    let strMeasure3: String
//    let strMeasure4: String
//    let strMeasure5: String
//    let strMeasure6: String
//    let strMeasure7: String
//    let strMeasure8: String
//    let strMeasure9: String
//    let strMeasure10: String
//}
//struct Welcome: Codable, Decodable {
//    let drinks: [[strDrink: String?]]
//}

struct CocktailResults: Codable {
    let strDrink: String?
   // let strInstructions: String?
//let drinkName: String?
//let imageString: String?
//let ingredient1: String?
//let ingredient2: String?
//let ingredient3: String?
//let ingredient4: String?
//let ingredient5: String?
//let ingredient6: String?
//let ingredient7: String?
//let ingredient8: String?
//let ingredient9: String?
//let ingredient10: String?
//let measurement1: String?
//let measurement2: String?
//let measurement3: String?
//let measurement4: String?
//let measurement5: String?
//let measurement6: String?
//let measurement7: String?
//let measurement8: String?
//let measurement9: String?
//let measurement10: String?
//let instructions: String?
    
//enum CodingKeys: String, CodingKey {
//case drinkName = "strDrink"
//case imageString = "strDrinkThumb"
//case ingredient1 = "strIngredient1"
//case ingredient2 = "strIngredient2"
//case ingredient3 = "strIngredient3"
//case ingredient4 = "strIngredient4"
//case ingredient5 = "strIngredient5"
//case ingredient6 = "strIngredient6"
//case ingredient7 = "strIngredient7"
//case ingredient8 = "strIngredient8"
//case ingredient9 = "strIngredient9"
//case ingredient10 = "strIngredient10"
//case measurement1 = "strMeasure1"
//case measurement2 = "strMeasure2"
//case measurement3 = "strMeasure3"
//case measurement4 = "strMeasure4"
//case measurement5 = "strMeasure5"
//case measurement6 = "strMeasure6"
//case measurement7 = "strMeasure7"
//case measurement8 = "strMeasure8"
//case measurement9 = "strMeasure9"
//case measurement10 = "strMeasure10"
//case instructions = "strInstructions"
//    }
}
//struct DrinksResults: Codable {
//let drinks: [CocktailResults]
//}

struct CurrentCoctail: Codable {
    let drinks: [CocktailResults]
  //let strDrink: String  let drinkName = CocktailResults[0]
    
    
}

