//
//  Algorithms_FilippSV
//
//  Created by Filipp S.V. on 12/01/2019.
//

// 1) Find BMI l = m / (h * h); m == kg, h == meter;

/*
print("Enter your weight (kg):")
let weightInput = Double(readLine()!)
print("Enter your height (meter):")
let heightInput = Double(readLine()!)
let weight = weightInput!, height = heightInput!

var res = ((weight / (height * height)) * 100).rounded() / 100 // I could not find an analogue of C "%.2f" in Swift
print("Your BMI is: \(res)")

switch res {
case 16...18.5:
    print("Ты дрищ!")
case 18,5...24.99:
    print("Норма")
case 25...30:
    print("Избыток")
default:
    print("Что-то пошло не так. Попробуй через год.")
}
*/


// 2) Find max. number of 4 numbers

/*
var num = Int()
var numUnwrp: Int
var i = 0

while (i != 4) {
    print("Enter number:")
    let userNumber = Int(readLine()!)
    numUnwrp = userNumber!
     num > numUnwrp ? () : (num = numUnwrp)
     i += 1
}
print("Max number is: \(num)")
*/


// 3) Exchange values of two var.

/* With 3rd var.
print("Enter number 1:")
var num1 = Int(readLine()!)
print("Enter number 2:")
var num2 = Int(readLine()!)
var tmp: Int?
print("\nOld num1, num2: \(num1!), \(num2!)")
tmp = num1
num1 = num2
num2 = tmp
print("New num1, num2: \(num1!), \(num2!)")
*/

/* Without 3rd var.
var arr = [Int?]()
var i = 1
var prntI = 1

while (i != 3) {
    print("Enter number \(i):")
    arr.append(Int(readLine()!))
    i += 1
}
print("")
while (i != 1) {
    print("Your new number \(prntI): \(arr[i - 2]!)")
    i -= 1
    prntI += 1
}
 */


// 10) A = B * Q + R (r = 0!!!) Формула деления нацело. Если "делимое" можно учитывать. Если нет, то for i in 2...number!/2. При вводе 1 сразу True.

/*
var arrB = [Int]()
var number: Int?

repeat {
    print("Enter a number > 0:")
    number = Int(readLine()!)
    number! == 0 ? print("Not ZERO!") : ()
} while (number == 0)

for i in 1...(number! == 1 ? number! : number! / 2) {
    if ((number! % i == 0) && ((number! / i) % 2 != 0)) {
        arrB.insert(number! / i, at: 0)
    }
}
    print((arrB.isEmpty ? "False!" : "True!\nYour numbers: \(arrB)"))
*/


// 11) Average arithmetic

/*
var arr = [Int]()
var countNum = 0
var userNumber: Int?
var total = 0
repeat {
    print("Enter a number:")
    userNumber = Int(readLine()!)
    if ((userNumber! > 0) && (userNumber! % 10 == 8)) {
        arr.append(userNumber!)
        countNum += 1
        total += userNumber!
    }
} while (userNumber! != 0)

print("Average arithmetic at your numbers is: \(total / countNum)")
*/


// 12) Find max. number from 3 numbers using func.

/*
func findMax(numbers: [Int]) -> Int {
    var conditionalMax = numbers[0]
    for i in numbers {
        if i > conditionalMax {
         conditionalMax = i
        }
    }
    return conditionalMax
}

var i = 0
var userNum: Int?
var arrayN: [Int] = []

repeat {
    print("Enter a number:")
    userNum = Int(readLine()!)
    arrayN.append(userNum!)
    i += 1
} while (i < 3)

print(findMax(numbers: arrayN))
*/


// 13) Func. random

/* With random()
func genRanNum (num1: Int, num2: Int) -> Int {
    let number = Int.random(in: num1 ... num2)
    return number
}

print(genRanNum(num1: 1, num2: 100))
*/

/* Without random()
import Foundation

func genRanNum (from: Int, to: Int) -> Int {
    let number = (Calendar.current.component(.nanosecond, from: Date()) % ((to + 1) - from)) + from
    return number
}

print(genRanNum(from: 1, to: 100))
*/


// 14) Automorphic numbers
/*
let randN = Int.random(in: 1...1000000)
var randNcapacity: Int
var countCapacity = 0
var remainder = 1

print("Selected number: \(randN)")

for i in 1...randN {
    randNcapacity = i
    
    repeat {
        randNcapacity = randNcapacity / 10
        countCapacity += 1
    } while (randNcapacity != 0)

    repeat {
        remainder = remainder * 10
        countCapacity -= 1
    } while (countCapacity != 0)
    
    ((i * i) % remainder == i) ? print("Automorphic number: \(i)") : ()
    
    remainder = 1
}
*/


print("\n\nSorry, but unfortunately I did not manage to do the rest of the tasks, do not know the programming language. There were no classes yet.") // Indent exit code


