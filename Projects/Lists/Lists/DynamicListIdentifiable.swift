//
//  DynamicListIdentifiable.swift
//  Lists
//
//  Created by Ludovic Ollagnier on 18/06/2020.
//  Copyright © 2020 TecTec. All rights reserved.
//

import SwiftUI

struct DynamicListIdentifiable: View {
    var body: some View {
        NavigationView {
            List(PodcastTrack.demoTracks) { track in
                NavigationLink(destination: TrackDetails()) {
                    Text(track.title)
                }
            }.navigationBarTitle("List")
                .navigationBarItems(trailing: HStack {
                    Button("Add") {
                        print("Toto")
                    }
                    Button("Filter") {
                        print("Toto")
                    }
                })
        }
    }
}

struct TrackDetails: View {

    var body: some View {
        VStack {
            Text("Track details")
            NavigationLink(destination: Text("End")) {
                Text("Navigate")
            }
        }.navigationBarTitle("TrackDetails")

    }
}

struct DynamicListIdentifiable_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListIdentifiable()
    }
}
