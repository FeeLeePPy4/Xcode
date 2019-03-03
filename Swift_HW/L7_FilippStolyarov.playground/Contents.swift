import UIKit

/*
 Газированная вода
 
 Без сиропа - 1 коп
 Сироп Грушевый - 3 коп
 Сироп Крем-Сода - 3 коп
 */

// 1) Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
/*
enum AvtomatErrors: Error {
    case wrongName
    case outOfStock
    case notEnoughMoney(addMoney: Int)
}

struct Item {
    var price: Int
    var count: Double
    let product: Product
}

struct Product {
    let name: String
}

class Avtomat {
    
    static var userMoney = 0
    
    var stock = [
        "Button 1": Item(price: 1, count: 3.0, product: Product(name: "Without syrup")),
        "Button 2": Item(price: 3, count: 4.5, product: Product(name: "Pear syrup")),
        "Button 3": Item(price: 3, count: 0.0, product: Product(name: "Cream-Soda syrup"))]
    
    func moneyFromUser(money: Int) {
        Avtomat.userMoney = money
    }
    
    func sellProduct(productName: String) throws -> Product {
        
        guard let item = stock[productName] else {
            throw AvtomatErrors.wrongName
        }

        guard item.count > 0 else {
            throw AvtomatErrors.outOfStock
        }

        guard item.price <= Avtomat.userMoney else {
throw AvtomatErrors.notEnoughMoney(addMoney: item.price - Avtomat.userMoney)
        }

        
        Avtomat.userMoney -= item.price
        var newStock = item
        newStock.count -= 0.3
        stock[productName] = newStock
        print("Your \(newStock.product.name). Remainder money \(Avtomat.userMoney)\nSyrup in stock \(newStock.count) liters")
        return newStock.product
    }
    
    func returnMoney() {
        print("Money returned:", Avtomat.userMoney, "See Ya!")
        Avtomat.userMoney = 0
    }
}
let insertMoney = Avtomat()
insertMoney.moneyFromUser(money: 13)

let getSyrup = Avtomat()
//let sell = try? getSyrup.sellProduct(productName: "Button 4") // short write

do {
    let _ = try getSyrup.sellProduct(productName: "Button 2")
} catch AvtomatErrors.wrongName {
    print("Wrong name")
} catch AvtomatErrors.outOfStock {
    print("Out of stock")
} catch AvtomatErrors.notEnoughMoney(let needMoney) {
     print("Need more money \(needMoney)")
} catch let error {
    print(error.localizedDescription)
}

let returnRemainder = Avtomat()
returnRemainder.returnMoney()
*/

// 2) Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.
/*
enum AvtomatErrors: Error {
    case wrongName
    case outOfStock
    case notEnoughMoney(addMoney: Int)
}

struct Item {
    var price: Int
    var count: Double
    let product: Product
}

struct Product {
    let name: String
}

class Avtomat {
    
    static var userMoney = 0
    
    var stock = [
        "Button 1": Item(price: 1, count: 3.0, product: Product(name: "Without syrup")),
        "Button 2": Item(price: 3, count: 4.5, product: Product(name: "Pear syrup")),
        "Button 3": Item(price: 3, count: 0.0, product: Product(name: "Cream-Soda syrup"))]
    
    func moneyFromUser(money: Int) {
        Avtomat.userMoney = money
    }
    
    func sellProduct(productName: String) -> (Product?, AvtomatErrors?) {

        guard let item = stock[productName] else {
            print("\(productName): \(AvtomatErrors.wrongName)\nYour money: \(Avtomat.userMoney)")
            return (nil, AvtomatErrors.wrongName)
        }
        
        guard item.count > 0 else {
            print("\(productName): \(AvtomatErrors.outOfStock)\nYour money: \(Avtomat.userMoney)")
            return (nil, AvtomatErrors.outOfStock)
        }
        
        guard item.price <= Avtomat.userMoney else {
            print("\(productName): \(AvtomatErrors.notEnoughMoney(addMoney: item.price - Avtomat.userMoney))")
            return (nil, AvtomatErrors.notEnoughMoney(addMoney: item.price - Avtomat.userMoney))
        }
        
        Avtomat.userMoney -= item.price
        var newStock = item
        newStock.count -= 0.3
        stock[productName] = newStock
        print("Your \(newStock.product.name). Remainder money \(Avtomat.userMoney)\nSyrup in stock \(newStock.count) liters")
        return (newStock.product, nil)
    }
    
    func returnMoney() {
        print("Money returned:", Avtomat.userMoney, "See Ya!")
        Avtomat.userMoney = 0
    }
}
let insertMoney = Avtomat()
insertMoney.moneyFromUser(money: 14)

let getSyrup = Avtomat()
getSyrup.sellProduct(productName: "Button 4")
getSyrup.sellProduct(productName: "Button 2")
getSyrup.sellProduct(productName: "Button 3")

let returnRemainder = Avtomat()
returnRemainder.returnMoney()

getSyrup.sellProduct(productName: "Button 1")
*/
