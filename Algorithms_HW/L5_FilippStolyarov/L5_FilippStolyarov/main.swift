//
//  main.swift
//  L5_FilippStolyarov
//
//  Created by Filipp S.V. on 26/01/2019.
//  Copyright © 2019 FilippStolyarov. All rights reserved.
//

import Foundation

// 1) Conversion decimal to binary with Stack

func push(array: [Int], number: Int) -> [Int] {
    var mutArr = array
    mutArr.append(number)
    return mutArr
}

func pop(array: [Int]) {
    var prntStr = String()
    var i = array.count - 1
    repeat {
        prntStr.append(String(array[i]))
        i -= 1
    } while i >= 0
    print("\(prntStr).0")
}

func conversion(arr: [Int], num: Double) -> [Int] {
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

