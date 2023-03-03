//
//  NewRecipeView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 03/03/2023.
//

import SwiftUI

struct NewRecipeView: View {
    @State var name = ""
    @State var hours = ""
    @State var minutes = ""
    var body: some View {
        VStack {
            Text("New recipe")
                .font(.title)
            VStack(spacing: 20) {
                TextField("Name", text: $name)
                    .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 2))
                HStack {
                    Image(systemName: "clock")
                    TextField("Hours", text: $hours)
                        .keyboardType(.numberPad)
                    TextField("Minutes", text: $minutes)
                        .keyboardType(.numberPad)
                    Spacer()
                }
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
