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
        List(PodcastTrack.demoTracks) { track in
            Text(track.title)
        }    }
}

struct DynamicListIdentifiable_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListIdentifiable()
    }
}
