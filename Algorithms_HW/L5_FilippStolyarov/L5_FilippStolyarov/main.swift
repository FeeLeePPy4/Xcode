//
//  main.swift
//  L5_FilippStolyarov
//
//  Created by Filipp S.V. on 26/01/2019.
//  Copyright © 2019 FilippStolyarov. All rights reserved.
//

import Foundation

// 1) Conversion decimal to binary with Stack
/*
func push(array: [Int], number: Int) -> [Int] {  // добавление данных
    var mutArr = array
    mutArr.append(number)
    return mutArr
}

func pop(array: [Int]) {  // извлечение данных начиная с конца
    var prntStr = String()
    var i = array.count - 1
    repeat {
        prntStr.append(String(array[i]))
        i -= 1
    } while i >= 0
    print("\(prntStr).0")
}

func conversion(arr: [Int], num: Double) -> [Int] {  // перевод в двоичную систему
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

// 6) Queue
// With array
/*
func enqueue(array: [Int], numOfDigits: Int) -> [Int] {  // добавление данных
    var mutArr = array
    for _ in 1...numOfDigits {
        mutArr.append(Int.random(in: 1...9))
    }
    print(mutArr)
    return mutArr
}

func dequeue(array: [Int]) {  // извлечение данных начиная с начала
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
