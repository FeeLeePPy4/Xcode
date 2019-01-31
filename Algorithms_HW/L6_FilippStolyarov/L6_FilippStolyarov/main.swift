//
//  L6_FilippStolyarov
//
//  Created by Filipp S.V. on 30/01/2019.
//

import Foundation

// 1) Hash-func
/*
var userCode = "1234code"

func simpleHash(code: String) {
    let arrKey = ["a": code.count - 1, "b": code.count - 2, "c": code.count - 3, "d": code.count - 4, "e": code.count - 5, "f": code.count - 6, "g": code.count - 7, "o": code.count - 15]  // simple example to characters
    var result = String()
    
    for i in code {
        if Int(String(i)) != nil {  // for numbers in code
            let numX = Int(String(i))!
            result.append(String((numX * numX) + (code.count * numX)) + "/")  // .."/" - for clarity in the console
        }
        else if Int(String(i)) == nil {  // for characters in code
            var  charX = arrKey[String(i)]
            if charX! < 0 {
                charX! = -charX!
                result.append("0" + String(charX!) + "/")  // .."/" - for clarity in the console
            }
            else {
                result.append(String(charX!) + "/")  // .."/" - for clarity in the console
            }
        }
        else {
            print("?!@#%&")  // if error
        }
    }
    print(result)
}

simpleHash(code: userCode)
*/

// 2) Binary tree
/*
var root = [0, 8, 9, 15, 12, 6, 6, 12, 16, 0, 0, 0, 5]

// all tree
func prntTree(i: Int) {
    if (root[i] != 0 && i < root.count) {
        print(root[i], terminator: "")
        if (2 * i < root.count && root[2 * i] != 0 || 2 * i + 1 < root.count && root[2 * i + 1] != 0) {
            print("(", terminator: "")
            if 2 * i < root.count && root[2 * i] != 0 { prntTree(i: 2 * i) }  // left
            else { print("Null", terminator: "") }
            print(",", terminator: "")
            if 2 * i + 1 < root.count && root[2 * i + 1] != 0 { prntTree(i: 2 * i + 1) }  // right
            else { print("Null", terminator: "") }
            print(")", terminator: "")
        }
    }
}

// Root-L-R
func prntTreeRLR(i: Int) {
    print(root[i], terminator: " ")
    if 2 * i < root.count && root[2 * i] != 0 { prntTreeRLR(i: 2 * i) }  // left
    if 2 * i + 1 < root.count && root[2 * i + 1] != 0 { prntTreeRLR(i: 2 * i + 1) }  // right
}

// R-Root-L
func prntTreeRRL(i: Int) {
    if 2 * i + 1 < root.count && root[2 * i + 1] != 0 { prntTreeRRL(i: 2 * i + 1) }  // right
    print(root[i], terminator: " ")
    if 2 * i < root.count && root[2 * i] != 0 { prntTreeRRL(i: 2 * i) }  // left
}

// L-Root-R
func prntTreeLRR(i: Int) {
    if 2 * i < root.count && root[2 * i] != 0 { prntTreeLRR(i: 2 * i) }  // left
    print(root[i], terminator: " ")
    if 2 * i + 1 < root.count && root[2 * i + 1] != 0 { prntTreeLRR(i: 2 * i + 1) }  // right
}

// if Root == % 4
func prntTree_4(i: Int) {
    if root[i] % 4 == 0 { print(root[i], terminator: " ") }
    if 2 * i < root.count && root[2 * i] != 0 { prntTree_4(i: 2 * i) }  // left
    if 2 * i + 1 < root.count && root[2 * i + 1] != 0 { prntTree_4(i: 2 * i + 1) }  // right
}

// Search
var number = 5
func prntTreeS(i: Int, searchNum: Int) {
    if root[i] == searchNum { print(i, terminator: " ") }
    if 2 * i < root.count && root[2 * i] != 0 { prntTreeS(i: 2 * i, searchNum: searchNum) }  // left
    if 2 * i + 1 < root.count && root[2 * i + 1] != 0 { prntTreeS(i: 2 * i + 1, searchNum: searchNum) }  // right
}

print("all tree")
prntTree(i: 1)  // all tree
print("\nRoot-L-R")
prntTreeRLR(i: 1)  // Root-L-R
print("\nR-Root-L")
prntTreeRRL(i: 1)  // R-Root-L
print("\nL-Root-R")
prntTreeLRR(i: 1)  // L-Root-R
print("\nRoot % 4")
prntTree_4(i: 1)  // Root % 4
print("\nSearch")
prntTreeS(i: 1, searchNum: number)  // Search
print("")  // Indent exit code
*/
