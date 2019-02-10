import UIKit

// 1) Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

enum engineOnOff {
    case engineON, engineOFF
}

class Car {
    let color: UIColor
    let year: Int
    var km: Int
    var checkEngine: engineOnOff
    
    static var kmAllCars = 0
    
    init (color: UIColor, year: Int, km: Int, checkEngine: engineOnOff) {
        self.color = color
        self.year = year
        self.km = km
        self.checkEngine = checkEngine
        
        Car.kmAllCars += km
    }
    
    static func kmInfo() { print("Общий километраж", self.kmAllCars, "км") }
}

var car1 = Car(color: .white, year: 1998, km: 128, checkEngine: .engineOFF)
var car2 = Car(color: .white, year: 1998, km: 100, checkEngine: .engineOFF)

Car.kmInfo()

// 2) Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

enum hatchOpenClose {  // enum for sportcar
    case hatchOpen, hatchClose
}

enum trailerDoorsOpenClose {  // enum for truck
    case trailerDoorsOpen, trailerDoorsClose
}

class sportCar : Car {
    var hatchCheck: hatchOpenClose
    var accelerationTo100: Double
    
    init(color: UIColor, year: Int, km: Int, checkEngine: engineOnOff, hatchCheck: hatchOpenClose, accelerationTo100: Double) {
        self.hatchCheck = hatchCheck
        self.accelerationTo100 = accelerationTo100
        
        super.init(color: color, year: year, km: km, checkEngine: checkEngine)
    }
    
    func hatchOpen() { hatchOpenClose.hatchOpen }
    func hatchClose() { hatchOpenClose.hatchClose }
}

class truckCar : Car {
    let loadCapacity: Int
    let volumeTank: Int
    var trailerDoors: trailerDoorsOpenClose
    
    init(color: UIColor, year: Int, km: Int, checkEngine: engineOnOff, loadCapacity: Int, volumeTank: Int, trailerDoors: trailerDoorsOpenClose) {
        self.loadCapacity = loadCapacity
        self.volumeTank = volumeTank
        self.trailerDoors = trailerDoors
        
        super.init(color: color, year: year, km: km, checkEngine: checkEngine)
    }
    
    func openTrailerDoors() { self.trailerDoors = .trailerDoorsOpen }
    func closeTrailerDoors() { self.trailerDoors = .trailerDoorsClose }
}

var car3sport = sportCar(color: .brown, year: 2000, km: 80, checkEngine: .engineON, hatchCheck: .hatchOpen, accelerationTo100: 8.5)
var car4truck = truckCar(color: .blue, year: 1990, km: 1239011, checkEngine: .engineON, loadCapacity: 10000, volumeTank: 300, trailerDoors: .trailerDoorsClose)

print("In sportCar unique properties: hatchCheck & accelerationTo100")
print("In truckCar unique properties: loadCapacity & volumeTank")

// 3) Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

enum sportCarEnum {
    case hatchOpen, hatchClose
    case autopilotOn, autopilotOff
}

enum truckCarEnum {
    case trailerDoorsOpen, trailerDoorsClose
    case sleeperSpreadOut, sleeperFolded
}

// 4) В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

class newSportCar : sportCar {
    override func hatchOpen() {
        super.hatchOpen()
        print("Уведомление о люке")
    }
}

class newTruck : truckCar {
    override func openTrailerDoors() {
        super.openTrailerDoors()
        print("Уведомление о дверях трейлера")
    }
}

// 5) Создать несколько объектов каждого класса. Применить к ним различные действия.

var car5 = newTruck(color: .white, year: 1991, km: 1340534, checkEngine: .engineOFF, loadCapacity: 8500, volumeTank: 270, trailerDoors: .trailerDoorsClose)
car5.trailerDoors = .trailerDoorsOpen
car5.checkEngine = .engineON
car5.openTrailerDoors()

var car6 = newSportCar(color: .cyan, year: 2012, km: 100, checkEngine: .engineOFF, hatchCheck: .hatchClose, accelerationTo100: 8)
car6.hatchCheck = .hatchOpen
car6.accelerationTo100 = 7.6
car6.hatchOpen()
print("New acceleration:", car6.accelerationTo100)

// 6) Вывести значения свойств экземпляров в консоль.

class forPrint {
    let name: String
    let secondName: String
    let age: Int
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
        self.age = 100
    }
}

var toPrint = forPrint(name: "Ivan", secondName: "Ivanov")
print(toPrint.name)
print(toPrint.secondName)
print(toPrint.age)
