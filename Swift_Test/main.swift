//
//  main.swift
//  Swift_Test
//
//  Created by  Tsuki on 14-6-8.
//  Copyright (c) 2014年  Tsuki. All rights reserved.
//

import Foundation

println("Hello, World!")

var test : Double = 3.5
let test2 = 5
var test3 : String = "hello world"
var test4 : Bool = false
let u16 = UInt16.max
println(u16)
//let u8:UInt8 = UInt8(u16)
//(u8)
println(Int(test))
typealias MyInt = Int64
var maxInt64 = MyInt.max
println(maxInt64)
var tuple1 :(String,Int) = ("陈飞飞",24)
println(tuple1)
println(tuple1.0)
let (name,age) = tuple1
let (name2,_) = tuple1
let tuple2 = (first:200,second:300)

