//
//  MailEditor.swift
//  Modality
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct MailEditor: View {

    @State private var message = ""
    @State private var startedWriting = false

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            VStack {
                TextField("Message", text: $message)
                Spacer()
            }.navigationBarItems(leading: Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "nosign")
            }), trailing: Button(action: {
                self.startedWriting = true
                }, label: {
                    Image(systemName: "paperplane")
            }))
        }.actionSheet(isPresented: $startedWriting) {
            ActionSheet(title: Text("Are you sure"), message: Text("Your content will be lost"), buttons: [.cancel(), .destructive(Text("I'm sure"), action: {
                self.presentationMode.wrappedValue.dismiss()
            })])
        }
    }
}

struct MailEditor_Previews: PreviewProvider {
    static var previews: some View {
        MailEditor()
    }
}
