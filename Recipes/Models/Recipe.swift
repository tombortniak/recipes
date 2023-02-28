//
//  Recipe.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 27/02/2023.
//

import Foundation

struct Recipe {
    var title: String
    var duration: Int
    var ingredients: [Ingredient]
    var preparationSteps: [String]
}

let testRecipes = [Recipe(title: "Kurczak teriyaki", duration: 25, ingredients: testIngredients, preparationSteps: testPreparationSteps),
                   Recipe(title: "Sałatka", duration: 10, ingredients: testIngredients, preparationSteps: testPreparationSteps),
                   Recipe(title: "Makaron udon", duration: 3, ingredients: testIngredients, preparationSteps: testPreparationSteps)]
let testPreparationSteps = ["Ugotować makaron udon", "Na patelnię wlać składniki sosu teriyaki", "Posypać uprażonym sezamem"]
