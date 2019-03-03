import UIKit

// 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
enum WindowOperations {
    case Wopen, Wclosed
}
enum EngineOperations {
    case Estart, Estop
}

protocol Car {
    var window: WindowOperations { set get }
    var engine: EngineOperations { set get }
    func WindowOpen()
    func WindowClose()
    func EngineStart()
    func EngineStop()
}

// 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

extension Car {
    func WindowOpenExt() {
        let windowExt = WindowOperations.Wopen
        print(windowExt)
    }
    func WindowCloseExt() {
        let windowExt = WindowOperations.Wclosed
        print(windowExt)
    }
}

extension Car {
    func EngineStartExt() {
        let engineExt = EngineOperations.Estart
        print(engineExt)
    }
    func EngineStopExt() {
        let engineExt = EngineOperations.Estop
        print(engineExt)
    }
}

// 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.


class SportCar: Car {
    var window: WindowOperations
    var engine: EngineOperations
    var brand: String
    var year: Int
    
    init (window: WindowOperations, engine: EngineOperations, brand: String, year: Int) {
        self.window = window
        self.engine = engine
        self.brand = brand
        self.year = year
    }
    
    func WindowOpen() { window = .Wopen }
    func WindowClose() { window = .Wclosed }
    func EngineStart() { engine = .Estart }
    func EngineStop() { engine = .Estop }
}

class TruckCar: Car {
    var window: WindowOperations
    var engine: EngineOperations
    var transmissionName: String
    var hp: Int
    
    init (window: WindowOperations, engine: EngineOperations, transmissionName: String, hp: Int) {
        self.window = window
        self.engine = engine
        self.transmissionName = transmissionName
        self.hp = hp
    }
    
    func WindowOpen() { window = .Wopen }
    func WindowClose() { window = .Wclosed }
    func EngineStart() { engine = .Estart }
    func EngineStop() { engine = .Estop }
}

// 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

extension SportCar: CustomStringConvertible {
    var description: String {
        return brand
    }
}

extension TruckCar: CustomStringConvertible {
    var description: String {
        return transmissionName
    }
}

// 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

var sportCar = SportCar(window: .Wclosed, engine: .Estop, brand: "Aston Martin", year: 2020)
var anotherSportCar = SportCar(window: .Wopen, engine: .Estop, brand: "Ferrari", year: 2010)

sportCar.WindowOpen(); sportCar.EngineStart()
print(sportCar.window, sportCar.engine)
anotherSportCar.EngineStart()
print(anotherSportCar.engine)

var truckCar = TruckCar(window: .Wopen, engine: .Estart, transmissionName: "Volvo I-Shift", hp: 400)
var anotherTruckCar = TruckCar(window: .Wopen, engine: .Estart, transmissionName: "David Brawn", hp: 700)

truckCar.WindowClose()
print(truckCar.window)
anotherTruckCar.WindowClose(); anotherTruckCar.EngineStop()
print(anotherTruckCar.window, anotherTruckCar.engine)

// 6. Вывести сами объекты в консоль.

print("\(sportCar), \(anotherSportCar)")
print("\(truckCar), \(anotherTruckCar)")
