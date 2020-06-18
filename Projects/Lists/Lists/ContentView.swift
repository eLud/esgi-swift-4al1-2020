//
//  ContentView.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 18/06/2020.
//  Copyright © 2020 TecTec. All rights reserved.
//

import SwiftUI

struct PodcastTrack: Identifiable {

    let id = UUID()
    let title: String
    let author: String
    let duration: Double

    static let demoTracks: [PodcastTrack] = [PodcastTrack(title: "Title 1", author: "Author 1", duration: 120), PodcastTrack(title: "Title 2", author: "Author 2", duration: 80)]
}

struct ContentView: View {

    @State private var userName = ""
    @State private var language = ""
    var body: some View {
        Form {
            TextField("UserName", text: $userName)
            Picker(selection: $language, label: Text("Language")) {
                Text("Swift")
                Text("C#")
                Text("Objective-C")
            }
            Section(footer: Text("Ne pas oublier d'enregistrer")) {
                Button("Save") {

                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
