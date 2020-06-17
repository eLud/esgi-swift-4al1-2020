//
//  ContentView.swift
//  ExtractingViews
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var isPlaying = false
    @State private var currentTitle: String = "Title"
    @State private var progress: Double = 0

    var body: some View {
        VStack {
            Text(isPlaying ? "Playing: "+currentTitle : "Paused")
            ControlView(isPlaying: $isPlaying)
            Slider(value: $progress)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


