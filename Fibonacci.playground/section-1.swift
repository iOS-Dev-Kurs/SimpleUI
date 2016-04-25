// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var f1 = 1
var f2 = 2
for x in 1..<10 {
    f1 += f2
    f2 += f1
    println (f1)
    println(f2)
}
