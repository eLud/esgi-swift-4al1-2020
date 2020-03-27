import UIKit


struct Temperature {

    //Stored property
    var celsius: Double

    //Computed property (get et set)
    var fahrenheit: Double {
        get {
            return celsius * 1.8 + 32
        }

        set {
            celsius = (newValue - 32) / 1.8
        }
    }

    var kelvin: Double {
        get {
            return celsius + 273.15
        }

        set {
            celsius = newValue - 273.15
        }
    }

    init(celsius: Double) {
        self.celsius = celsius
    }

    init(fahrenheit: Double) {
        celsius = (fahrenheit - 32) / 1.8
    }

    init(kelvin: Double) {
        celsius = kelvin - 273.15
    }
}

var zero = Temperature(celsius: 0)
let zero2 = Temperature(fahrenheit: 32)
let abs = Temperature(kelvin: 0)
print(zero.celsius)
print(zero2.celsius)

zero.kelvin = 0
zero.celsius

abs.fahrenheit
abs.celsius

struct Odometer {
    var count: Int = 0

    mutating func increment(by increment: Int = 1) {
        count += increment
    }

    mutating func reset() {
        count = 0
    }

    func printCount() {
        print(count)
    }
}

var odometer = Odometer(count: 42)
odometer.printCount()

let secondOdmoter = odometer
secondOdmoter.printCount()

odometer.increment(by: 42)
odometer.printCount()
secondOdmoter.printCount()


let array: Array<String> = ["A", "B", "C", "A", "B"]
array.count

let dico: Dictionary<String, String> = ["firstName":"Ludovic", "lastName": "Ollagnier"]

let set: Set<String> = ["A", "B", "C", "A", "B"]
set.count

repeat {

} while zero.celsius > 0


class Shoe: CustomStringConvertible {
  let color: String
  let size: Int
  let hasLaces: Bool

  init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }

    var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }

}

let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
print(myShoe)

struct Employee: Equatable, CustomStringConvertible, Comparable {

  let firstName: String
  let lastName: String
  let jobTitle: String
  let phoneNumber: String

    var description: String {
        return "\(firstName) \(lastName)"
    }

    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        lhs.firstName == rhs.firstName
    }

    static func < (lhs: Employee, rhs: Employee) -> Bool {
        lhs.firstName < rhs.firstName
    }
}

struct Company {
  let name: String
  let employees: [Employee]
}

let emp1 = Employee(firstName: "Jacob", lastName: "Edwards", jobTitle: "Marketing Director", phoneNumber: "415-555-9293")
let emp2 = Employee(firstName: "Jacob", lastName: "Edwards", jobTitle: "Marketing Director", phoneNumber: "415-555-9294")
let emp3 = Employee(firstName: "Paul", lastName: "Edwards", jobTitle: "Marketing Director", phoneNumber: "415-555-9294")

if emp1 == emp2 {
    print("Equals")
}

let apple = Company(name: "Apple", employees: [emp1, emp2, emp3])
apple.employees.sorted()


var childName: String? = nil
print(childName)
childName = "Toto"
print(childName)

if childName != nil {
    print(childName!.uppercased())
} else {
    print("Je n'ai pas d'enfant")
}

//Optionnal binding
if let name = childName {
    print("le nom de mon enfant est \(name)")
} else {
    print("Je n'ai pas d'enfant")
}

struct Person {
  var age: Int
  var residence: Residence?
}
struct Residence {
  var address: Address
}
struct Address {
  var buildingNumber: String
  var streetName: String?
  var apartmentNumber: String?

    func printAdress() {

    }
}

let adress = Address(buildingNumber: "1", streetName: "Infinite Loop", apartmentNumber: nil)
let residence = Residence(address: adress)
let me = Person(age: 33, residence: residence)

if let residence = me.residence, let street = residence.address.streetName {
    print("La rue est \(street)")
}

let buildingNumber = me.residence?.address.buildingNumber.uppercased()

var temp = 30

guard temp > 20 else {
    print("Il fait trop froid")
    fatalError()
}
