//
//  ContentView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 26/02/2023.
//

import SwiftUI

struct ContentView: View {
    let recipes: [String] = []
    var body: some View {
        VStack {
            Text("What will you cook today?")
                .font(.title)
                .bold()
            if recipes.isEmpty {
                Text("You don't have any recipes yet")
                    .frame(maxHeight: .infinity)
            } else {
                List {
                    ForEach(recipes, id: \.first) { recipe in
                        Text(recipe)
                    }
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
