//
//  Meal.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

struct Meal: Equatable, CustomStringConvertible, Identifiable {

    enum Category {
        case first, main, desert, drink
    }

    let id = UUID()
    var name: String
    var price: Double
    var pitch: String
    var category: Category
    var components: [Aliment]?
    var allergens: [String] {
        #warning("Don't forget the allergens")
        return []
    }
    var calories: Double?
    var isVegan: Bool {
        #warning("Don't forget")
        return true
    }
    var isVeggie: Bool {
        #warning("Don't forget")
        return true
    }

    var description: String {
        return "\(name) : \(price)€"
    }
}
