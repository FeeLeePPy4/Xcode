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
