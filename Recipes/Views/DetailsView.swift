//
//  DetailsView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 28/02/2023.
//

import SwiftUI

struct DetailsView: View {
    let recipe: Recipe
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                HStack {
                    Text(recipe.title)
                        .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Group {
                            Image(systemName: "clock")
                            Text("\(recipe.duration) min")
                        }
                    }
                }
                Text("Ingredients")
                    .font(.headline)
                VStack(alignment: .leading) {
                    ForEach(recipe.ingredients, id: \.name) { ingredient in
                        HStack(alignment: .firstTextBaseline) {
                            Text("\(ingredient.amount)\(ingredient.unit ?? "x")")
                                .bold()
                            Text(ingredient.name)
                        }
                    }
                }
                Text("Preparation")
                    .font(.headline)
                Spacer()
            }
            .padding()
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(recipe: testRecipes.first!)
    }
}
