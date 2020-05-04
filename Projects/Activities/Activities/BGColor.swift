//
//  BGColor.swift
//  Activities
//
//  Created by Ludovic Ollagnier on 04/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct BGColor: View {

    @State private var selectedColor: Color = .white

    var body: some View {
        ZStack {
            selectedColor
                .edgesIgnoringSafeArea(.all)
            HStack {
                Button(action: {
                    self.selectedColor = .red
                }) {
                    Image(systemName: "eyedropper")
                    Text("Red")
                }
                .padding()
                .background(Color.red)
                .cornerRadius(15)
                .foregroundColor(.white)
                .font(.headline)
                Button(action: {
                    self.selectedColor = .green
                }) {
                    Image(systemName: "eyedropper")
                    Text("Green")
                }
                .padding()
                .background(Color.green)
                .cornerRadius(15)
                .foregroundColor(.white)
                .font(.headline)
                Button(action: {
                    self.selectedColor = .blue
                }) {
                    Image(systemName: "eyedropper")
                    Text("Blue")
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(15)
                .foregroundColor(.white)
                .font(.headline)
            }
        }
    }
}

struct BGColor_Previews: PreviewProvider {
    static var previews: some View {
        BGColor()
    }
}
