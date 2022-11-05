import UIKit

import UIKit

//page 1 of 4
var registrationList: [String] = []

registrationList.append("Sarah")
print(registrationList)

registrationList += ["Clay", "Hannah", "Jessica", "Justin"]
print(registrationList)

registrationList.insert("Charlie", at: 1)
print(registrationList)

registrationList[5] = "Rebeca"
print(registrationList)

let deletedItem = registrationList.removeLast()
print(deletedItem)

//page 2 of 4
var walkingChallenges: Array<String> = ["Walk 3 miles a day", "Walk 1 hours everyday"]
var runningChallenges = ["Run 5 times a week", "Run 5 miles every 2 days."]

var challenges = [walkingChallenges, runningChallenges]

//1st element in the 2nd challenge list
print(challenges[1][0])
print(challenges.removeAll())

var committedChallenges = [String]()
committedChallenges = ["a", "b", "c"]

if committedChallenges.isEmpty {
    print("user should commit to challenge")
} else {
    print("you have \(walkingChallenges.count) challenges")
}

if challenges.count == 1 {
    print("The challenge you have chosen is \(challenges[1][0])")
} else {
    print("You have chosen multiple challenges.")
}

//page 3 of 4

var myDictionary: [String: Int] = [:]
myDictionary["January"] = 31
myDictionary["February"] = 28
myDictionary["March"] = 31
print(myDictionary)

myDictionary["April"] = 30
print(myDictionary)

myDictionary.updateValue(29, forKey: "February")
print(myDictionary)

if let january = myDictionary["January"] {
    print("January has \(january) days")
}

//var dictionary = Dictionary<String, [String]>()
var dictionary: [String: [String]] = [:]
var shapes = ["Square", "Triangle", "Circle"]
var colors = ["indigo", "blue", "pink"]

dictionary[shapes[0]] = [colors[0]]
dictionary[shapes[1]] = [colors[1]]
dictionary[shapes[2]] = [colors[2]]
print(dictionary)

if let first = dictionary[shapes[shapes.count - 1]]{
    print(first)

}

var paces = [String : Double]()
paces["Easy"] = 10.0
paces["Medium"] = 8.0
paces["Fast"] = 6.0

print(paces)

paces["Sprint"] = 4.0
print(paces)

paces.updateValue(7.5, forKey: "Medium")
paces.updateValue(5.8, forKey: "Fast")
print(paces)

paces.removeValue(forKey: "Sprint")
print(paces)

if let val = paces["Medium"] {
    print("Okay! I'll keep you at a \(val) minute mile pace.")
}
