//
//  ContentView.swift
//  Activities
//
//  Created by Ludovic Ollagnier on 04/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 128, height: 128)
                    .foregroundColor(.orange)
                VStack(alignment: .leading) {
                    Text("Ludovic OLLAGNIER")
                        .lineLimit(1)
                        .minimumScaleFactor(0.5)
                        .font(.largeTitle)
                    Text("France")
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                        .frame(height: 20)
                    Text("iOS Dev")
                        .font(.headline)
                }
            }
            Divider()
            RoundedRectangle(cornerRadius: 15)
                .padding()
                .foregroundColor(.secondary)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
    }
}
