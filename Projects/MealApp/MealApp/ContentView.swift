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
        VStack(alignment: .leading) {
            Image("pizza")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Plat")
                .padding([.horizontal], 10)
                .padding([.vertical], 2)
                .background(
                    RoundedRectangle(cornerRadius: 10).foregroundColor(.green))
            HStack(alignment: .firstTextBaseline) {
                Text(meal.name)
                    .font(.title)
                Spacer()
                Text("\(meal.price)€")
                    .font(.headline)
                    .foregroundColor(.gray)
            }.padding()
            VStack(alignment: .leading) {
                Text(meal.pitch)
                if meal.components != nil {
                    Text("Ingredients:")
                        .font(.headline)
                        .padding([.top], 8)
                    ForEach(meal.components!, id: \.name) { (aliment) in
                        Text(aliment.name)
                    }
                }
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
