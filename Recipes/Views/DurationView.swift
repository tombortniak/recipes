//
//  DurationView.swift
//  Recipes
//
//  Created by Tomasz Bortniak on 04/03/2023.
//

import SwiftUI

struct DurationView: View {
    @Binding var isDurationPickerShown: Bool
    @Binding public var recipeDuration: Duration
    let hours = Array(0...24)
    let mins = Array(0...60)
    var body: some View {
        VStack {
            Text("Select duration")
            HStack(spacing: 0) {
                Picker("Select number of hours", selection: $recipeDuration.hours) {
                    ForEach(hours, id: \.self) {
                        Text("\($0) hours")
                    }
                }
                .pickerStyle(.wheel)
                .scaledToFit()
                Picker("Select number of minutes", selection: $recipeDuration.minutes) {
                    ForEach(mins, id: \.self) {
                        Text("\($0) minutes")
                    }
                }
                .pickerStyle(.wheel)
                .scaledToFit()
            }
            Button {
                isDurationPickerShown.toggle()
            } label: {
                Text("Set")
            }
        }
    }
}

struct DurationView_Previews: PreviewProvider {
    static var previews: some View {
        DurationView(isDurationPickerShown: .constant(true), recipeDuration: .constant(Duration(hours: 0, minutes: 30)))
    }
}
