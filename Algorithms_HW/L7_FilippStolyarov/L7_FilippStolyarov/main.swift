//
//  L7_FilippStolyarov
//
//  Created by Filipp S.V. on 02/02/2019.
//

import Foundation

// 2) G in depth
/*
var matrix = [[0,1,1,1,0,0,0,0],
              [1,0,1,0,1,1,0,0],
              [1,1,0,1,1,0,0,0],
              [1,0,1,0,0,0,1,0],
              [0,1,1,0,0,1,0,1],
              [0,1,0,0,1,0,0,1],
              [0,0,0,1,0,0,0,1],
              [0,0,0,0,1,1,1,0]]

var arrMark = [0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0]  // top : mark(0 - not read, 1 - read, 2 - done)
var stack = [Int]()

func GinDepth(top: Int) {
    var index = 0
    let stackTop = stack.last!
    stack.removeLast()
    for i in matrix[stackTop] {
        if i == 1 && arrMark[index] == 0 {
            arrMark[index] = 1
            stack.append(index)
        }
        index += 1
    }
    
    arrMark[stackTop] = 2
    if !stack.isEmpty { GinDepth(top: stack.last!) }
}

stack.append(0)  // start from top 0
GinDepth(top: 0)

print(arrMark)  // all tops must be 2
*/

// 3) G in width
/*
 var matrix = [[0,1,1,1,0,0,0,0],
 [1,0,1,0,1,1,0,0],
 [1,1,0,1,1,0,0,0],
 [1,0,1,0,0,0,1,0],
 [0,1,1,0,0,1,0,1],
 [0,1,0,0,1,0,0,1],
 [0,0,0,1,0,0,0,1],
 [0,0,0,0,1,1,1,0]]
 
 var arrMark = [0:0,1:0,2:0,3:0,4:0,5:0,6:0,7:0]  // top : mark(0 - not read, 1 - read, 2 - done)
 var queue = [Int]()
 
 queue.append(0)  // start from top 0.
 
 repeat {
 var index = 0
 for i in matrix[queue[0]] {
 if i == 1 && arrMark[index] == 0 {
 queue.append(index)
 arrMark[index] = 1
 }
 index += 1
 }
 arrMark[queue[0]] = 2
 queue.removeFirst()
 } while !queue.isEmpty
 
 print(arrMark)  // all tops must be 2
 */
