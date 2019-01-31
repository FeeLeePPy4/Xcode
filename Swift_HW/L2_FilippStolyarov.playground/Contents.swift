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
UInt64.max
// 18 446 744 073 709 551 615 Max to Uint64
// 9 223 372 036 854 775 807 Max to Int
// 12 200 160 415 121 876 738
// 7 540 113 804 746 346 429
func sumFib(num1: UInt64, num2: UInt64) {
    var tmpArr = [num1, num2]
    for i in 0...90 {
        if tmpArr.count == 103 { break }
        tmpArr.append(tmpArr[i] + tmpArr[i + 1])
    }
    print(tmpArr)
    print(tmpArr.count)
}

var arrFib = [Int]()
var numb1: UInt64 = 1, numb2: UInt64 = 1

sumFib(num1: numb1, num2: numb2)


