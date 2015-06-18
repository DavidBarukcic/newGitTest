//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var base = 3
var items = 10
var answer = 1

for _ in 1...10 {
    answer *= base
}

answer





// Dictionary

var airport:Dictionary<String,Int> = ["Zagreb": 1,"Split": 2]

airport.count
airport["Trogir"] = 3


airport


// functions

func incrementNumber(inout #number: Int, increment:Int = 1) {
    number += increment
}

var ourInt = 1

incrementNumber(number: &ourInt)
ourInt


incrementNumber(number: &ourInt, increment: 10)



// arg -> return

func double(number:Int) -> Int {
    return number * 2
}

func triple(number:Int) -> Int {
    return number * 3
}


func modifeInt(#number:Int, #modifier:Int -> Int) -> Int {
    return modifier(number)
}

modifeInt(number: 15, modifier: double)
modifeInt(number: 30, modifier: triple)





func buildIncrementor() -> () -> Int {
    var count = 0
    func incrementor() -> Int{
        ++count
        return count
    }
    return incrementor
}

var incrementor = buildIncrementor()

incrementor()

incrementor()



func average(#numbers:Int...) -> Int {
    var total = 0
    for n in numbers {
        total += n
    }
    return total / numbers.count
}

average(numbers: 15,60)


// classes

class Dinosaur {
    var species:String
    var age:Int
    var period:String?
    
    init(species:String, age:Int, period:String? = nil) {
        self.species = species
        self.age = age
        self.period = period
    }
}

var dinosaurOne = Dinosaur(species: "T-rex", age: 60)
var dinosaurTwo = Dinosaur(species: "Apatosaurus", age: 78, period: "Jura")










