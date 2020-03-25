import UIKit

struct Meal {

    enum Category {
        case first, main, desert, drink
    }

    var name: String
    var price: Double
    var description: String
    var category: Category
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
    let allergens: [Allergen]
    let isVegan: Bool
    let isVeggie: Bool
}

enum Allergen {
    case gluten
    case fish
    case lactose
}

class Restaurant {

    let name: String
    private var menu: [Meal]

    init(name: String) {
        self.name = name
        menu = []
    }

    func add(_ meal: Meal) {
        menu.append(meal)
    }

    func remove(_ meal: Meal) {

    }

    func all() -> [Meal] {
        return menu
    }
}
