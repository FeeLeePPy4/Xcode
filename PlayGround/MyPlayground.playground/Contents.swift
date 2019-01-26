import UIKit
import Foundation

<<<<<<< HEAD

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
=======

let numStrt = 3
let numFin = 119
var tmp = numFin
var arrRes = [0]
var arrTmp = [Int]()
let one = 1
let two = 2

repeat {
    if (tmp % two == 0) {
        if (tmp / two) >= numStrt {
            tmp = tmp / two
            arrRes.insert(2, at: 0)
        } else {
            tmp = tmp - one
            arrRes.insert(1, at: 0)
        }
    } else {
        tmp = tmp - one
        arrRes.insert(1, at: 0)
    }
    print("R-W1 \(arrRes)")
} while tmp != numStrt
arrRes.insert(0, at: 0)

print("  F1 \(arrRes)")



>>>>>>> parent of a41bd88... dz 1, 2
