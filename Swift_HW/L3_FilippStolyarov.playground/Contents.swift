import UIKit

// 1) Several structs + 2) with passenger car and truck.
/*
enum littleCarType {
    case hatchback, sedan, SUV
}

enum truckType {
    case truck_tractor, tractor_with_sleeper
}

enum salon {
    case leather, dermantin, alcantara
}

enum engineCheck {
    case On, Off
}

struct passengerCar {
    let brand: String
    let color: UIColor
    var type: littleCarType
    var interior: salon
    let vEngine: Double
    let hp: Int
    let Vbaggage: Int
    let year: Int
    var engine: engineCheck
}

struct truck {
    let brand: String
    let color: UIColor
    var type: truckType
    var interior: salon
    let vEngine: Double
    let hp: Int
    let Vbaggage: Int
    let year: Int
    var engine: engineCheck
}

let kia = passengerCar(brand: "KIA", color: .brown, type: .hatchback, interior: .leather, vEngine: 1.6, hp: 129, Vbaggage: 395, year: 2012, engine: .Off)
let volvo = truck(brand: "VOLVO", color: .white, type: .tractor_with_sleeper, interior: .dermantin, vEngine: 12, hp: 400, Vbaggage: 90000, year: 1991, engine: .On)
*/

// 3) Possible actions with cars
/*
enum N: String {
    case engineStart = "запуск двигателя"
    case engineStop = "остановка двигателя"
    case windowsOpen = "открыть окна"
    case windowsClose = "закрыть окна"
    case uploadBaggage = "загрузить багаж"
    case downloadBaggage = "выгрузить багаж"
}
*/

// 4) Method adding to struct
/*
enum transmission {
    case auto, manual
}

struct truck {
    let brand: String
    let color: UIColor
    let vEngine: Double
    let hp: Int
    let Vbaggage: Int
    let year: Int
    var transmission: transmission
    
    mutating func changeTransmissionToManual() {
        transmission = .manual
    }
    mutating func changeTransmissionToAuto() {
        transmission = .auto
    }
}

var volvo = truck(brand: "VOLVO", color: .white, vEngine: 12, hp: 400, Vbaggage: 90000, year: 1991, transmission: .auto)
volvo.changeTransmissionToManual()
print(volvo.transmission)
*/

// 5)
/*
enum pallet: Int {  // for truck
    case one_pal = 10000
    case two_pal = 17500
    case three_pal = 22500
}

enum Condition: Double {  // for  truck
    case bad = 25
    case good = 50
    case perfect = 75
}

struct passengerCar {
    let brand: String
    let color: UIColor
    let V_engine: Double
    let hp: Int
    let V_baggage: Int
    let year: Int
    var openDoor: Bool
    var fuel_liters: Int
    var fuel_consumption: Int
    var distance: Int {
        get {
            return fuel_liters / fuel_consumption * 100
        }
    }
    
    mutating func passengerIn() {
        openDoor = !openDoor
    }
}

struct truck {
    let brand: String
    let color: UIColor
    let V_engine: Double
    let hp: Int
    let V_baggage: Int
    let year: Int
    var loading: pallet
    var condition: Condition
    var cost: Double
    var totalCost: Double {
        get {
            return cost * (condition.rawValue / 100)
        }
    }
    
    func V_bag_adding() {
        print("Available space", V_baggage - loading.rawValue, "liters")
    }
}

var kia = passengerCar(brand: "KIA", color: .brown, V_engine: 1.6, hp: 129, V_baggage: 395, year: 2012, openDoor: false, fuel_liters: 56, fuel_consumption: 7)
var volvo = truck(brand: "VOLVO", color: .white, V_engine: 12, hp: 400, V_baggage: 86000, year: 1991, loading: .two_pal, condition: .good, cost: 1300000)

kia.passengerIn()
print("Door open?", kia.openDoor)
print("Your distance may", kia.distance, "km")

volvo.V_bag_adding()
print("Total cost", volvo.totalCost)
*/

// 6)
/*
struct Truck {
    let brand: String
    let color: String
    let cost: Int
    let sleeper: Bool
    let hp: Int
    
    init() {
        brand = "Volvo"
        color = "brown"
        cost = 1000
        sleeper = true
        hp = 400
    }
    
}

let truck = Truck()
print(truck)

print(truck.brand)
print(truck.color)
print(truck.cost)
print(truck.sleeper)
print(truck.hp)
*/
