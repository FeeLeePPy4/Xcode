import UIKit
import Foundation


let numStrt = 3
let numFin = 7
var tmp = numFin
var arrRes = [Int]()
let one = 1
let two = 2

repeat {
print("0 \(tmp)")
    
    if (tmp % two == 0) {
        if (tmp / two) >= numStrt {
            tmp = tmp / two
            print("1 \(tmp)")
        }
    } else {
            tmp = tmp - one
        print("2 \(tmp)")
    }
    
} while tmp != numStrt
