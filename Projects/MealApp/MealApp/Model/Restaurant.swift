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
        menu = []
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
