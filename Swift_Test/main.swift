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

let opString : String? = "Chen"
println(opString)
let imopString : String! = "Chen"
println(imopString)
assert(imopString,"nil value!")
println("there are \(countElements(imopString)) characters")

//array
var heros : String[] = ["coco","PA","SA"]
heros += "TA"
heros += ["TS","TB"]

//dictionary
var phone : Dictionary<String,int> = ["Chen":158,"Zizi":151]
println("there are \(phone.count) numbers")

//...
func printMax(numbers : Int...)
{
	var result : Int = 0
	for number in numbers
	{
		result += number
	}
	println("the amount of these numbers is \(result)")
}
printMax(5,3,1,8,0)

//int-out
func doubleFirst(inout first : Int)
{
	first = first * 2;
}
var first = 5
print("\(first) double is")
doubleFirst(&first)
println("\(first)")

//closure
var country = ["China","Japan","Russia","America"]
sort(country, {(s1:String,s2:String)->Bool in
	return s1 > s2
})
// sort(country,{s1,s2 in return s1 > s2})
// sort(country,{s1,s2 in s1 > s2})
// sort(country,{$0 > $1})
// sort(country, >)

//enum
enum Direction
{
	case North
	case South
	case East
	case West
}
let myDir = Direction.West

enum Color
{
	case Red(Int)
	case Blue(String)
}
let red = Color.Red(256)
let blue = Color.Blue("Blue")
switch red
{
case .Red(let value):
	println("red color is \(value)")
case .Blue(let msg):
	println("this is" + msg + "color")
}

//Raw Value
enum Ascii
{
	case Tab = "\t"
	case Enter = "\n"
}
let character = Ascii.Tab.toRaw()
let anotherChar = Ascii.fromRaw("\n")