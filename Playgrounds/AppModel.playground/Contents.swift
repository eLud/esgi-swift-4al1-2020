import UIKit

struct Meal {

    var name: String
    var price: Double
    var description: String
    var category: String
    var components: [Aliment]
    var allergens: [String] {
        #warning("Don't forget the allergens")
        return []
    }
    var calories: Double
    var isVegan: Bool {
        #warning("Don't forget")
        return true
    }
    var isVeggie: Bool {
        #warning("Don't forget")
        return true
    }
}

struct Aliment {
    let name: String
    let allergens: [String]
    let isVegan: Bool
    let isVeggie: Bool
}
