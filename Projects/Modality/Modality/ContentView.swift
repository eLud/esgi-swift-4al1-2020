//
//  ContentView.swift
//  Modality
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var isWritingMail = false

    var body: some View {
        NavigationView {
            List {
                ForEach(0..<10) { item in
                    VStack(alignment: .leading) {
                        Text("Expéditeur")
                        Text("Titre du mail")
                        Text("Aperçu du mail")
                    }
                }
            }
            .navigationBarItems(trailing: Button("New mail") {
                self.isWritingMail.toggle()
            })
        }.sheet(isPresented: $isWritingMail) {
            MailEditor()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
