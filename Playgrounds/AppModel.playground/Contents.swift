import UIKit

struct Meal: Equatable, CustomStringConvertible {

    enum Category {
        case first, main, desert, drink
    }

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

struct Aliment: Comparable {
    let name: String
    let allergens: [Allergen]
    let isVegan: Bool
    let isVeggie: Bool

    static func < (lhs: Aliment, rhs: Aliment) -> Bool {
        return lhs.name < rhs.name
     }
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
