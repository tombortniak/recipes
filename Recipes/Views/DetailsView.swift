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
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("Preparation")
                    .frame(maxWidth: .infinity, alignment: .leading)
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
