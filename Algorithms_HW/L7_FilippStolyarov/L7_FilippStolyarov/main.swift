//
//  L7_FilippStolyarov
//
//  Created by Filipp S.V. on 02/02/2019.
//

import Foundation
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
