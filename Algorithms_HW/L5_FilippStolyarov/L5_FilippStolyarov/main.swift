//
//  L5_FilippStolyarov
//
//  Created by Filipp S.V. on 26/01/2019.
//

import Foundation

// 1) Conversion decimal to binary with Stack
/*
func push(array: [Int], number: Int) -> [Int] {  // adding data
    var mutArr = array
    mutArr.append(number)
    return mutArr
}

func pop(array: [Int]) {  // extracting data from the end
    var prntStr = String()
    var i = array.count - 1
    repeat {
        prntStr.append(String(array[i]))
        i -= 1
    } while i >= 0
    print("\(prntStr).0")
}

func conversion(arr: [Int], num: Double) -> [Int] {  // conversion to binary system
    var numb = num
    var mArr = arr
    for _ in 1...11 {
        numb *= 2
        if numb > 0.99 {
            mArr = push(array: mArr, number: 1)
            numb -= 1
        }
        else {
            mArr = push(array: mArr, number: 0)
        }
    }
    return mArr
}

var decNum = 0.3
var store: [Int] = []

store = conversion(arr: store, num: decNum)
pop(array: store)
*/

// 3) Bracket sequence
/*
var equation: String = "[2/{5*(4+7)}]"
var arrCompare = [Character]()

for i in equation {
    
    if (i == "(") || (i == "[") || (i == "{") {
        arrCompare.append(i)
    } else if (i == ")") {
        if arrCompare[arrCompare.count - 1] == "(" { arrCompare.remove(at: arrCompare.count - 1) }
        else { print("No )!"); break }
    } else if (i == "]") {
        if arrCompare[arrCompare.count - 1] == "[" { arrCompare.remove(at: arrCompare.count - 1) }
        else { print("No ]!"); break }
    } else if (i == "}") {
        if arrCompare[arrCompare.count - 1] == "{" { arrCompare.remove(at: arrCompare.count - 1) }
        else { print("No }!"); break }
    }
}

print("Bracket sequence is", arrCompare.isEmpty ? "right" : "not right")
*/

let equation = "2+2*2"
var exitStr = [Character]()
var stack = [Character]()

for i in equation {
    if i == "+" || i == "-" {
        if (stack.count > 0) && (stack[stack.count - 1] == "*" || stack[stack.count - 1] == "/") {
            exitStr.append(stack[stack.count - 1])
            stack.removeLast()
        }
        stack.append(i)
    }
    else if i == "*" {
        stack.append(i)
    }
    else { exitStr.append(i) }
}

repeat {
    exitStr.append(stack[stack.count - 1])
    stack.removeLast()
} while stack.count > 0

print(exitStr)


// 6) Queue
// With array
/*
func enqueue(array: [Int], numOfDigits: Int) -> [Int] {  // adding data
    var mutArr = array
    for _ in 1...numOfDigits {
        mutArr.append(Int.random(in: 1...9))
    }
    print(mutArr)
    return mutArr
}

func dequeue(array: [Int]) {  // extracting data from beginning
    var prntStr = String()
    var mutArr = array
    repeat {
        prntStr.append(String(mutArr[0]))
        mutArr.removeFirst()
    } while mutArr.count > 0
    print(prntStr)
}

var arr = [Int]()

arr = enqueue(array: arr, numOfDigits: 5)
dequeue(array: arr)
*/

// 7) Two-way queue
// v.1
/*
func pushFront(array: [Int], number: Int) -> [Int] {  // adding data to beginning
    var mutArr = array
    var i = number
    repeat {
        mutArr.insert(i, at: 0)
        i -= 1
    } while i > 0
    print(mutArr)
    return mutArr
}

func pushBack(array: [Int], number: Int) -> [Int] {  // adding data to end
    var mutArr = array
    var i = number
    repeat {
        mutArr.append(i)
        i -= 1
    } while i > 0
    print(mutArr)
    return mutArr
}

func popBack(array: [Int], number: Int) -> [Int] {  // extracting data from end
    var mutArr = array
    var i = number
    var prntStr = String()
    repeat {
        prntStr.append(String(mutArr[mutArr.count - 1]))
        mutArr.removeLast()
        i -= 1
    } while i > 0
    print(prntStr)
    return mutArr
}

func popFront(array: [Int], number: Int) -> [Int] {  // extracting data from beginning
    var mutArr = array
    var i = number
    var prntStr = String()
    repeat {
        prntStr.append(String(mutArr[0]))
        mutArr.removeFirst()
        i -= 1
    } while i > 0
    print(prntStr)
    return mutArr
}

var arr = [Int]()

arr = pushFront(array: arr, number: 5)
arr = pushBack(array: arr, number: 5)
arr = popBack(array: arr, number: 5)
arr = popFront(array: arr, number: 5)
*/

// v.2 with random
/*
func randPush(array: [Int], number: Int) -> [Int] {  // adding data with random choose beginning/end
    var mutArr = array
    var r = Int()
    for i in 1...number {
        r = Int.random(in: 1...2)
        if r == 1 {
            mutArr.insert(i, at: 0)
        }
        else {
            mutArr.append(i)
        }
    }
    print(mutArr)
    return mutArr
}

func randPop(array: [Int]) -> [Int] {  // extracting data with random choose beginning/end
    var mutArr = array
    var r = Int()
    for _ in 1...array.count {
        r = Int.random(in: 1...2)
        if r == 1 {
            print(mutArr[0], terminator: " ")  // print without new line
            mutArr.removeFirst()
        }
        else {
            print(mutArr[mutArr.count - 1], terminator: " ")
            mutArr.removeLast()
        }
    }
    print("") // Indent exit code
    return mutArr
}

var arr = [Int]()

arr = randPush(array: arr, number: 10)
arr = randPop(array: arr)
*/
