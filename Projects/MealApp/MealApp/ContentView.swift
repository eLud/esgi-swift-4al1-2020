//
//  ContentView.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var meal = Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", category: .main, components: [Aliment(name: "Farine", allergens: [.gluten], isVegan: true, isVeggie: true), Aliment(name: "Tomate", allergens: [], isVegan: true, isVeggie: true), Aliment(name: "Fromage", allergens: [.lactose], isVegan: false, isVeggie: true)], calories: nil)

    var body: some View {
        VStack {
            Text(meal.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
