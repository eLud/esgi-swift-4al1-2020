//
//  SliderBGColor.swift
//  Activities
//
//  Created by Ludovic Ollagnier on 04/05/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct SliderBGColor: View {

    @State private var selectedRed: Double = 255
    @State private var selectedGreen: Double = 255
    @State private var selectedBlue: Double = 255

    var body: some View {
        ZStack {
            Color(red: selectedRed/255, green: selectedGreen/255, blue: selectedBlue/255)
                .frame(width: 200, height: 200)
            VStack {
                Spacer()
                HStack {
                    VStack {
                        HStack {
                            Text("0")
                            Slider(value: $selectedRed, in: 0...255)
                            Text("255")
                        }
                        Text("Red : \(Int(selectedRed))")
                    }
                    VStack {
                        HStack {
                            Text("0")
                            Slider(value: $selectedGreen, in: 0...255)
                            Text("255")
                        }
                        Text("Green : \(Int(selectedGreen))")
                    }
                    VStack {
                        HStack {
                            Text("0")
                            Slider(value: $selectedBlue, in: 0...255)
                            Text("255")
                        }
                        Text("Blue : \(Int(selectedBlue))")
                    }
                }
            }
        }
    }
}

struct SliderBGColor_Previews: PreviewProvider {
    static var previews: some View {
        SliderBGColor()
    }
}
