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
