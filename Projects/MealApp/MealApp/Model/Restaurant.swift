//
//  Restaurant.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

class Restaurant {

    let name: String
    private var menu: [Meal]

    init(name: String) {
        self.name = name
        menu = [Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", category: .main, components: [Aliment(name: "Farine", allergens: [.gluten], isVegan: true, isVeggie: true), Aliment(name: "Tomate", allergens: [], isVegan: true, isVeggie: true), Aliment(name: "Fromage", allergens: [.lactose], isVegan: false, isVeggie: true)], calories: nil), Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", category: .main, components: [Aliment(name: "Farine", allergens: [.gluten], isVegan: true, isVeggie: true), Aliment(name: "Tomate", allergens: [], isVegan: true, isVeggie: true), Aliment(name: "Fromage", allergens: [.lactose], isVegan: false, isVeggie: true)], calories: nil)]
    }

    func add(_ meal: Meal) {
        guard !menu.contains(meal) else {
            //on arrete la fonction
            return
        }
        menu.append(meal)
    }

    func remove(_ meal: Meal) {
        // Essayer retirer un meal du tableau
        if let idx = menu.firstIndex(of: meal) {
            menu.remove(at: idx)
        }
    }

    func all() -> [Meal] {
        return menu
    }
}
