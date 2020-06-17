//
//  Aliment.swift
//  MealApp
//
//  Created by Ludovic Ollagnier on 17/06/2020.
//  Copyright © 2020 Tectec. All rights reserved.
//

import Foundation

struct Aliment: Comparable {
    let name: String
    let allergens: [Allergen]
    let isVegan: Bool
    let isVeggie: Bool

    static func < (lhs: Aliment, rhs: Aliment) -> Bool {
        return lhs.name < rhs.name
     }
}
