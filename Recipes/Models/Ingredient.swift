//
//  Ingredient.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 28/02/2023.
//

import Foundation

struct Ingredient {
    var name: String
    var amount: Int
    var unit: String?
}

let testIngredients = [Ingredient(name: "czosnek", amount: 2, unit: nil), Ingredient(name: "mleko", amount: 250, unit: "ml"), Ingredient(name: "sól", amount: 500, unit: "g")]
