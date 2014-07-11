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
println("there are \(countElements(imopString!)) characters")

let myArray : Int[] = [1,2,3]
myArray[0] = 3

for i in 1...5
{
    print("\(i) ")
}
println()

for character in "Hello,World"
{
    print(character + " ")
}

switch opString!
{
    case "Chen":
    println("Yes")
    case "Zizi":
    println("No")
default:
    println("Nothing")
}

let pt = (3,3)
switch pt
{
case let(x,y) where x == y:
    println("\(x) and \(y) are same")
    fallthrough
case (_,_):
    println("haha")
case (_,3):
    println("haha2")
}

func sayHello()
{
    println("Hello")
}
sayHello()

//array
var heros : String[] = ["coco","PA","SA"]
heros += "TA"
heros += ["TS","TB"]

//dictionary
var phone : Dictionary<String,Int> = ["Chen":158,"Zizi":151]
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
print("\(first) double is ")
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
enum Ascii : Character
{
	case Tab = "\t"
	case Enter = "\n"
}
let character = Ascii.Tab.toRaw()
let anotherChar = Ascii.fromRaw("\n")

//class
class Building
{
    var height = 300
    var floor = 80
}
var empireBuilding = Building()
empireBuilding.height = 450
empireBuilding.floor = 120
let testBuilding = empireBuilding
empireBuilding.height = 300
println("test building's height is \(testBuilding.height)")
if(empireBuilding === testBuilding)
{
    println("there are the same!")
}

//array copy
var array1 = [4,7,2,6]
var array2 = array1
var array3 = array1.unshare()
array1[0] = 3
println("array2[0] is \(array2[0]), and array3[0] is \(array3[0])")

//lazy
class Reader
{
	@lazy var reader = Building()
}
var myReader = Reader()

//setter getter
//willset didset
struct iphone
{
	var name = "5s"
	{
		willSet
		{
			println("name will be \(newValue)")
		}
		didSet
		{
			println("old name is \(oldValue)")
		}
	}
	var size : Int
	{
		return 4.5
	}
	var dpi : Int
	{
		get
		{
			return 500
		}
		set
		{
			dpi = newValue
		}
	}
}

//mutating
struct Point
{
	var x = 1
	mutating func modifyBy(newValue : int)
	{
		x = newValue
	}
}
var myPoint = Point(x:1)
myPoint.modifyBy(3)
println("new x is \(myPoint.x)")

//type methods
class Aclass
{
	class func describe()
	{
		println("this is class A")
	}
}
Aclass.describe()
struct Bstruct
{
	static func describe()
	{
		println("this is struct b")
	}
}
Bstruct.describe()

//subscript
struct Matrix
{
	var grid : int[]
	init(rows : int,column : int)
	{
		grid = Array(count : rows*column,repeatedValue : 0)
	}
	subscript(row : int,column : int) -> int
	{
		get
		{
			return grid[(row*column)+column]
		}
		set
		{
			grid[(row*column)+column] = newValue
		}
		
	}
}
var matrix = Matrix(rows : 3,column : 4)
matrix[2][3] = 5

//inherit
class Vehicle
{
	var numOfWheels : Int
	func des()
	{
		println("It has \(numOfWheels) wheels")
	}
	init()
	{
		numOfWheels = 0
	}
}
@final class Bicycle : Vehicle
{
	init()
	{
		super.init()
		numOfWheels = 2
	}
	override func des()
	{
		println("The bike has \(numOfWheels) wheels")
	}
}
var bike = Bicycle()
bike.des()