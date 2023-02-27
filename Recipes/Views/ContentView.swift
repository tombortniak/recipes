//
//  ContentView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 26/02/2023.
//

import SwiftUI

struct ContentView: View {
    let recipes: [Recipe] = testRecipes
    var body: some View {
        VStack {
            Text("What will you cook today?")
                .font(.title)
                .bold()
            if recipes.isEmpty {
                VStack(spacing: 10) {
                    Text("You don't have any recipes yet")
                    Button {
                        
                    } label: {
                        HStack {
                            Text("Add recipe")
                            Image(systemName: "plus")
                        }
                    }
                    .buttonStyle(.borderedProminent)
                }
            } else {
                List {
                    ForEach(recipes, id: \.title) { recipe in
                        RecipeView(recipe: recipe)
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 10))
                }
                
            }
            
        }
        .padding([.bottom, .top], 40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
