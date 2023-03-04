//
//  NewRecipeView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 03/03/2023.
//

import SwiftUI

struct NewRecipeView: View {
    @State var recipeName = "Recipe name"
    @State var isDurationPickerShown = false
    @State var recipeDuration = Duration(hours: 0, minutes: 30)
    var body: some View {
        VStack {
            HStack {
                TextField("Recipe name", text: $recipeName)
                    .fixedSize()
                .font(.title)
                Spacer()
                HStack {
                    Image(systemName: "clock")
                    Text("\(recipeDuration.hours):\(recipeDuration.minutes)")
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    isDurationPickerShown.toggle()
                }
                .sheet(isPresented: $isDurationPickerShown) {
                    DurationView(isDurationPickerShown: $isDurationPickerShown, recipeDuration: $recipeDuration)
                        .presentationDetents([.fraction(0.4)])
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
