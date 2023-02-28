//
//  RecipeView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 27/02/2023.
//

import SwiftUI

struct RecipeView: View {
    let recipe: Recipe
    var body: some View {
        HStack(spacing: 25.0) {
            Image(systemName: "fork.knife")
            VStack(alignment: .leading) {
                Text(recipe.title)
                Text("\(recipe.duration) min")
                    .font(.caption)
            }
            Spacer()
        }
        .padding()
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe(title: "Kurczak teriyaki", duration: 25, ingredients: testIngredients, preparationSteps: testPreparationSteps))
    }
}
