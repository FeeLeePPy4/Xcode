//
//  L3_FilippStolyarov
//
//  Created by Filipp S.V. on 19/01/2019.
//

import Foundation

// 1) Bubble sort
//v.1 Not optimized (iterCount = 132)

/*
var arr = [5, 3, 4, 6, 8, 2, 44, 9, 11, 1, 7, 10, 15]
var indexCount = arr.count - 1
var index = 0
var iterCount = 0

func bubblesort (array: [Int]) -> Int {
    var mutArray = array
    while indexCount != 1 {
        if mutArray[index] > mutArray[index + 1] {
            mutArray.swapAt(index + 1, index)
            index += 1
        } else {
            index += 1
        }
        if index == mutArray.count - 1 {
            index = 0
            indexCount -= 1
        }
        iterCount += 1
    }
    print(mutArray)
    return iterCount
}

print(bubblesort(array: arr))
*/

//v.2 Optimized (iterCount == 69)

/*
var arr = [5, 3, 4, 6, 8, 2, 44, 9, 11, 1, 7, 10, 15]
var index = 0
var iterCount = 0
var indexCount = 1

func checkSort (array: [Int]) -> Bool {
    var i = 0
    repeat {
        if array[i] < array[i + 1] {
            i += 1
        } else {
            return false
        }
    } while i != array.count - 1
    return true
}

func bubble (array: [Int]) -> Int {
    var mutArray = array
    repeat {
        if checkSort(array: mutArray) {
            print("1 \(mutArray)")
            return iterCount
        }
        if mutArray[index] > mutArray[index + 1] {
            mutArray.swapAt(index, index + 1)
        }
        index += 1
        if index == arr.count - indexCount {
            index = 0
            indexCount += 1
        }
        iterCount += 1
    } while indexCount != mutArray.count
    print(mutArray)
    return iterCount
}

print(bubble(array: arr))
*/

//2) Cocktail-sort (iterCount == 22)
/*
var arr = [5, 3, 4, 6, 8, 2, 44, 9, 11, 1, 7, 10, 15]
var index = 0
var backIndex = arr.count - 1
var indexCount = 1
var backIndexCount = arr.count - 2
var iterCount = 0

func checkSort (array: [Int]) -> Bool {
    var i = 0
    repeat {
        if array[i] < array[i + 1] {
            i += 1
        } else {
            return false
        }
    } while i != array.count - 1
    return true
}

func bubble (array: [Int]) -> Int {
    var mutArray = array
    repeat {
        if mutArray[index] > mutArray[index + 1] {
            mutArray.swapAt(index + 1, index)
        }
        index += 1
        if mutArray[backIndex] < mutArray[backIndex - 1] {
            mutArray.swapAt(backIndex, backIndex - 1)
        }
        backIndex -= 1
        if index == mutArray.count - 1 {
            index = indexCount
            indexCount += 1
        }
        if backIndex == 0 {
            backIndex = backIndexCount
            backIndexCount -= 1
        }
        iterCount += 1
    } while !checkSort(array: mutArray)
    print(mutArray)
    return iterCount
}

print(bubble(array: arr))
*/

//3) Binary search (iterCount == 1...4 //for 12 elements)
/*
let arr = [-12, 10, 12, 15, 19, 38, 41, 44, 55, 62, 73, 99]
var iterCount = 0

func binSearch(array: [Int], search: Int) -> Int {
    var left = 0
    var right = array.count - 1
    var m = 0
    repeat {
        iterCount += 1
        m = (left + right) / 2
        
        if search == array[m] {
            return m
        }
        else if search > array[m] {
            left = m + 1
        }
        else {
            right = m - 1
        }
    } while left <= right
    return -1
}

print("Index \(binSearch(array: arr, search: 44))")
print("Iter.count \(iterCount)")
*/
