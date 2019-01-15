import UIKit

//var a = 1000
//var i = 0
//var check = 0
//repeat {
//    a = a / 10
//    i += 1
//} while (a != 0)
///////////




let randN = 70//Int.random(in: 1...100)
var randNcapacity = randN
var countCapacity = 0
var remainder = 1

print("Selected number: \(randN)")

for i in 1...randN {
    randNcapacity = i
    repeat {
        randNcapacity = randNcapacity / 10
        countCapacity += 1
        print("\(randNcapacity)   \(countCapacity)")
    } while (randNcapacity != 0)
    //    randNcapacity = randN
    
    repeat {
        remainder = remainder * 10
        countCapacity -= 1
    } while (countCapacity != 0)
    
    ((i * i) % remainder == i) ? print("Automorphic number: \(i)") : ()
    
    countCapacity = 0
    remainder = 1
    
}





