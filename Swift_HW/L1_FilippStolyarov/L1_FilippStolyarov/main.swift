//
//  L1_FilippStolyarov
//
//  Created by Filipp S.V. on 29/01/2019.
//

import Foundation

// 1) Quadratic equation
/*
 let equation = "x^2 + x - 6 = 0"
 
 func findRoot(a: Int, b: Int, c: Int) {
 let d = b * b - 4 * a * c
 if d > 0 {
 let rootN1 = (-b + Int(sqrt(Double(d)))) / 2 * a
 let rootN2 = (-b - Int(sqrt(Double(d)))) / 2 * a
 print("Корни: \(rootN1) и \(rootN2)")
 }
 else if d == 0 {
 let oneRoot = -b / (2 * a)
 print(oneRoot)
 }
 else if d < 0 {
 print("No Roots!")
 }
 }
 
 findRoot(a: 1, b: 1, c: -6)
 */

// 2) Triangle.
// Triangle area
/*
 let legA: Double = 4, legB: Double = 7
 let s = (legA * legB) / 2
 print(s)
 */
// Triangle perimeter
/*
 let legA: Double = 4, legB: Double = 7
 let c = sqrt(legA * legA + legB * legB)
 let p = c + legB + legA
 print(p)
 */
// Triangle hypotenuse
/*
 let legA: Double = 4, legB: Double = 7
 let c = sqrt(legA * legA + legB * legB)
 print(c)
 */

// 3) Sum of deposit
/*
 var sum: Double?, percent: Double?
 
 print("Entry sum:")
 sum = Double(readLine()!)
 print("Enter percent")
 percent = Double(readLine()!)
 
 for _ in 1...5 {
 sum = sum! * (1 + percent! / 100)
 }
 
 print("Your deposit after 5 years: ", round(sum!))
 */
