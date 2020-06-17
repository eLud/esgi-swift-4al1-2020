//
//  ControlView.swift
//  ExtractingViews
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ControlView: View {

    @Binding var isPlaying: Bool

    var body: some View {
        HStack {
            Button(action: {
                //Go to previous title
            }) {
                Image(systemName: "backward")
            }
            Button(action: {
                self.isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "pause.circle" : "play.circle")
            }
            Button(action: {
                //Go to next title
            }) {
                Image(systemName: "forward")
            }
        }
    }
}
