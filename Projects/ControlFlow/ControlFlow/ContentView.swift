//
//  ContentView.swift
//  ControlFlow
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var currentTemperature = 25.0

    var body: some View {
        ZStack {
            backgroundColor
            VStack {
                if currentTemperature > 28 {
                    HStack {
                        Text("Il fait chaud")
                        Image(systemName: "sun.max")
                    }                } else {
                    HStack {
                        Text("Il fait froid")
                        Image(systemName: "sun.min")
                    }
                }
                Text("\(Int(currentTemperature))°")
                Slider(value: $currentTemperature, in: -50...50, step: 1)
            }
        }
    }

    var backgroundColor: Color {
        currentTemperature > 28 ? .red : .blue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
