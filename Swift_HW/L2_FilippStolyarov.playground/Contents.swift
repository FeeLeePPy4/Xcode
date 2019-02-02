import UIKit

//1) Even number function
/*
func evenNum(userNum: Int) -> String {
    return userNum % 2 == 0 ? "Yes, your number is even" : "No, your number is not even"
}

var userNumber = 14

print(evenNum(userNum: userNumber))
*/

// 2) Is the number divisible by 3
/*
func divisibleNum(userNum: Int) -> String {
    return userNum % 3 == 0 ? "Yes, your number divisible by 3" : "No, your number is not divisible by 3"
}

var userNumber = 18

print(divisibleNum(userNum: userNumber))
*/

// 3) Increasing array
/*
var arr = [Int]()

for i in 1...100 {
    arr.append(i)
}
*/

// 4) Deleting numbers
/*
var arr = [Int]()
var count = 0

for i in 1...100 { arr.append(i) }

repeat {
    if arr.indices.contains(count) && (arr[count] % 2 == 0 || arr[count] % 3 != 0) {
        arr.remove(at: count)
        continue
    }
    count += 1
} while count != 100

print(arr)
*/

// 5) funcFib
// With double
/*
func sumFib(num1: Double, num2: Double) -> [Double] {
    var tmpArr = [num1, num2]
    for i in 0...99 {
        tmpArr.append(tmpArr[i] + tmpArr[i + 1])
    }
    return tmpArr
}

var arrFib = [Double]()
var numb1: Double = 1, numb2: Double = 1

arrFib = sumFib(num1: numb1, num2: numb2)

print(arrFib)
print(arrFib.count)
*/

// With decimal
/*
func sumFib(num1: Decimal, num2: Decimal) -> [Decimal] {
    var tmpArr = [num1, num2]
    for i in 0...99 {
        tmpArr.append(tmpArr[i] + tmpArr[i + 1])
    }
    return tmpArr
}

var arrFib = [Decimal]()
var numb1: Decimal = 1, numb2: Decimal = 1

arrFib = sumFib(num1: numb1, num2: numb2)

print(arrFib)
print(arrFib.count)
*/

// 6) Eratosthenes
/*
func numbers(array: [Int], numb: Int) -> [Int] {
    var tmpArr = array, count = 0
    
    for i in tmpArr {
        
        if (i != tmpArr[numb]) && (i % tmpArr[numb] == 0) {
            tmpArr.remove(at: count)
            continue
        }
        count += 1
    }
    if numb != tmpArr.count - 1 { numbers(array: tmpArr, numb: numb + 1) }
    return tmpArr
}

var arr = [Int]()

for i in 2...101 {
    arr.append(i)
}

print(numbers(array: arr, numb: 0))
*/
