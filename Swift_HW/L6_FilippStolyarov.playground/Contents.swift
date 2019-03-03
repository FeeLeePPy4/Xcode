//import UIKit
import Foundation

// 1) Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

class Rectangle {
    var sideA: Double
    var sideB: Double
    func calculatePerimeter() -> Double { return sideA + sideB }
    
    init(sideA: Double, sideB: Double) {
        self.sideA = sideA
        self.sideB = sideB
    }
}

class Circle {
    var radius: Double
    func calculatePerimeter() -> Double { return 2.0 * Double.pi * radius }
    
    init(radius: Double) { self.radius = radius }
}

struct Queue<T> {
    private var elements: [T] = []
    mutating func push(_ element: T) { elements.append(element) }
    mutating func pop() -> T? { return elements.removeFirst() }
}

// 2) Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

let odd: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 2 == 0
}

let even: (Int) -> Bool = { (element: Int) -> Bool in
    return element % 2 != 0
}

struct QueueN<N> {
    private var elements: [N] = []
    mutating func push(_ element: N) { elements.append(element) }
    mutating func pop() -> N? { return elements.removeFirst() }
    
    func filter(array: [Int], predicate: (Int) -> Bool) -> [Int] {
        var tmpArray = [Int]()
        for element in array {
            if predicate(element) {
                tmpArray.append(element)
            }
        }
        return tmpArray
    }
}

var queueNRectangle = QueueN<Rectangle>()
var queueNCircle = QueueN<Circle>()

queueNRectangle.push(Rectangle(sideA: 10, sideB: 12))
queueNCircle.push(Circle(radius: 15))



