//
//  RecipeView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 27/02/2023.
//

import SwiftUI

struct RecipeView: View {
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "fork.knife")
            VStack {
                Text("Kurczak Teriyaki")
                Text("25 min")
                    .font(.caption)
            }
        }
        .frame(alignment: .leading)
        .padding(10)
        .border(.black)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
