//
//  L4_FilippStolyarov
//
//  Created by Filipp S.V. on 23/01/2019.
//

import Foundation

//2) Длина максимальной подпоследовательности.

/*
var arrA = [10, 4, 3, 10, 8, 5, 3, 6, 8]
var arrB = [4, 10, 3, 4, 10, 5, 6, 9, 5]
var i = 0
var res1 = [Int](), res2 = [Int]()
var change = 0
var lastMatch = 0

func findMax(array1: [Int], array2: [Int]) {
    for A in array1 {
        repeat {
            if A == array2[i] {
                res1.append(A)
                lastMatch = i + 1
                if i == array2.count - 1 {
                    if change == 0 {
                        change = 1
                        i = 0
                        res2 = res1
                        res1.removeAll()
                        findMax(array1: array2, array2: array1)
                    }
                }
                i += 1
                break
            }
            else {
                if i == array2.count - 1 {
                    i = lastMatch
                    break
                }
                i += 1
            }
        } while i < array2.count
    }
    if change == 0 {
        change = 1
        i = 0
        res2 = res1
        res1.removeAll()
        findMax(array1: array2, array2: array1)
    }
    else {
        print("Наибольшая подпоследовательность", res1.count > res2.count ? "\(res1.count)" : "\(res2.count)", "элементов.\n", res1.count > res2.count ? "\(res1)" : "\(res2)")
    }
}

findMax(array1: arrA, array2: arrB)
*/

// К сожалению не смог решить "матрицей", т.к. за 2 вечера не смог в ней разобраться. Немного не понятна логика GB, давать курсы, требующие знаний в ЯП, вперед курса по изучению этого самого ЯП. Особенно на нулевом уровне. Обидно, что не хватает времени.
