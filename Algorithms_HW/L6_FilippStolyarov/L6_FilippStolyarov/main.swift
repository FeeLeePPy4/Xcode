//
//  L6_FilippStolyarov
//
//  Created by Filipp S.V. on 30/01/2019.
//

import Foundation

// 1) Hash-func
/*
var code = "1234code"
var arr = [Any]()
let arrKey = ["a": code.count - 1, "b": code.count - 2, "c": code.count - 3, "d": code.count - 4, "e": code.count - 5, "f": code.count - 6, "g": code.count - 7, "o": code.count - 15]

for i in code {
    if Int(String(i)) != nil {  // for numbers in code
        let numX = Int(String(i))!
        arr.append((numX * numX) + (code.count * numX))
    }
    else if Int(String(i)) == nil {  // for characters in code
        var  charX = arrKey[String(i)]
        if charX! < 0 {
            charX! = -charX!
            arr.append("0" + String(charX!))
        }
        else {
            arr.append(charX!)
        }
    }
    else {
        print("?!@#%&")  // if error
    }
}
print(arr)
*/

