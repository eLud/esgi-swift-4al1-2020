//
//  AddMealView.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 29/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct AddMealView: View {

    @State private var name: String = ""
    @State private var price: Double = 10.0
    @State private var pitch: String = ""
    @State private var category: Meal.Category = .first

    @Environment(\.presentationMode) var presentation

    var restaurant: Restaurant

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Meal's category", selection: $category) {
                        ForEach(Meal.Category.allCases) { cat in
                            Text(cat.rawValue)
                        }
                    }
                }
                TextField("Meal's name", text: $name)
                TextField("Meal's pitch", text: $pitch)
                HStack {
                    Slider(value: $price, in: 0...40.0, step: 0.25)
                    Text("\(price)")
                }
                Stepper("Price", value: $price, in: 0...40.0, step: 0.25)

                Section {
                    Button("Save") {
                        let meal = Meal(name: self.name, price: self.price, pitch: self.pitch, category: self.category, components: nil, calories: nil)
                        self.restaurant.add(meal)

                        self.presentation.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
}

struct AddMealView_Previews: PreviewProvider {
    static var previews: some View {
        AddMealView(restaurant: Restaurant(name: "Chez moi"))
    }
}
