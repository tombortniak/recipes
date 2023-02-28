//
//  Recipe.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 27/02/2023.
//

import Foundation

struct Recipe {
    let title: String
    let duration: Int
    let ingredients: [Ingredient]
}

let testRecipes = [Recipe(title: "Kurczak teriyaki", duration: 25, ingredients: testIngredients), Recipe(title: "Sałatka", duration: 10, ingredients: testIngredients), Recipe(title: "Makaron udon", duration: 3, ingredients: testIngredients)]
