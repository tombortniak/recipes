//
//  NewRecipeView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 03/03/2023.
//

import SwiftUI

struct NewRecipeView: View {
    @State var name = ""
    var body: some View {
        VStack {
            Text("New recipe")
                .font(.title)
            Form {
                TextField("Name", text: $name)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
            }
            Spacer()
        }
        .padding()
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
