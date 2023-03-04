//
//  DurationView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 04/03/2023.
//

import SwiftUI

struct DurationView: View {
    @State var selectedHours = 0
    @State var selectedMins = 0
    let hours = Array(0...24)
    let mins = Array(0...60)
    var body: some View {
        VStack {
            Text("Select duration")
            HStack(spacing: 0) {
                Picker("Select number of hours", selection: $selectedHours) {
                    ForEach(hours, id: \.self) {
                        Text("\($0) hours")
                    }
                }
                .pickerStyle(.wheel)
                .scaledToFit()
                Picker("Select number of minutes", selection: $selectedMins) {
                    ForEach(mins, id: \.self) {
                        Text("\($0) minutes")
                    }
                }
                .pickerStyle(.wheel)
                .scaledToFit()
            }
            Button {
                
            } label: {
                Text("Set")
            }
        }
    }
}

struct DurationView_Previews: PreviewProvider {
    static var previews: some View {
        DurationView()
    }
}
