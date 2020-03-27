//
//  ContentView.swift
//  FirstUIDemo
//
//  Created by Ludovic Ollagnier on 27/03/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.orange)

            Divider()
            Text("I love SwiftUI")
                .padding()
                .background(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PlayButton: View {

    @State private var isPlaying = false

    var body: some View {
        Button(action: { self.isPlaying.toggle()
        }) {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
        }
    }
}
struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}

