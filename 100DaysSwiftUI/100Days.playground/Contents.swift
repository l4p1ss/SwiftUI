import Cocoa
import Darwin

var greeting = """
Hello, playground
"""


var number1 = 1
var number2 = 1.1
var number3 = Double(number1) + number2

print(number1)


var number4 = number1 * number1

var isAuthenticated = false
isAuthenticated = !isAuthenticated

print(isAuthenticated)


let people = "Haters"
let action = "hate"

let lyric = people + " goona " + action


let name = "\(people) are \(number1)" //no use + or other math symbols

// ARRAY

var temperature = [25.3, 42.6, 13.2]
print(temperature[2])

var scores = Array<Int>()
scores.append(80)
scores.append(10)
scores.append(20)
print(scores)

var albums = Array<String>() //or var albums = [String]()
albums.append("red")
albums.append("blue")
print(albums)

print(albums.count)


var characters =  ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)


let bondMovies = ["Casino Royale", "Spectre", "No Time to Die"]
print(bondMovies.contains("frozen"))

print(bondMovies.sorted())
print(bondMovies.reversed())


// DICTIONARIES left: key, right: values
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee["name"])


//to solve the optional issue in the debut print

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name", default: "Unknown"])


var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'neil"] = 226
heights["Lebron James"] = 206

//CHECKPOINT 1
let celsius = 30
let fahreniheit = celsius * 9 / 5 + 32

print("\(celsius)°")
print("\(fahreniheit)°")



//SETS
var attendees = Set([100, 102, 104, 100]) //Set discrds duplicate, so the third item will be discarted; attention using let to create Set with duplicate; minimum of two items inside Set


//ENUMS
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
 //OR

enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
day = .wednesday

//TYPE ANNOTATION: use to force a particular type
var teams: [String] = [String]()
var cities : [String] = []
var clues = [String]() // this three lines are the same; they creates an empty array of String



enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark



var percentage: Double = 99
print(percentage)


var actor: String //create a variable without assign a value
actor = "John"


//CHECHPOINT 2

var collegues = [String]()

collegues.append("Giacomo")
collegues.append("Tommaso")
collegues.append("Samuele")
collegues.append("Lorenzo")
collegues.append("Samuele")

print(collegues)
print(collegues.count)

var colleguesDuplicate = Set(collegues)
print(colleguesDuplicate)
print(colleguesDuplicate.count)


//CHECK CONDITION
let score = 85

if score > 80 {
    print("Great job!")
}


let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

//MULTIPLE CONDITIONS

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}


//SWITCH

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're batman")
case "Mega-City One":
    print("you are judje")
case "Wakanda":
    print("clack panther")
default:
    print("Who are you?")
}

//TERNARY
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)


//LOOPS
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms { //loop iteration
    print("Swift works great on \(os)") //loop body
}

for platform in platforms { // writing pla XCode uses auto completion (using _ instead of platform)
    print("Swift works great on \(platform)") //loop body
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}


for j in 1..<12 {
    print("5 x \(j) is \(5 * j)")
}

var song = "Haters gonna hate"

for _ in 1...5 {
    song += " hate"
}

print(lyric)

//WHILE LOOP

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("FINE")


//CONTINUE - BREAK

let id = Int.random(in: 1...1000)


let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}


let n1 = 4
let n2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: n1) && i.isMultiple(of: n2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

// CHECKPOINT 3

for z in 1...100 {
    if z .isMultiple(of: 3) && z .isMultiple(of: 5) {
        print("FizzBuzz")
    } else if z .isMultiple(of: 5) {
        print("Buzz")
    } else if z .isMultiple(of: 3) {
        print("Fizz")
    } else {
        print(z)
    }
}


//FUNCTION

func printTimesTables(n: Int) {
    for k in 1...12 {
        print("\(k) * \(n) is \(k * n)")
    }
}

printTimesTables(n: 5)




func acceptString (string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

//func acceptString (string1: String, string2: String) -> Bool {
//    return string1.sorted() == string2.sorted()
//}

acceptString(string1: "ciao", string2: "icoa")


func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

//func pythagoras(a: Double, b: Double) -> Double {
// sqrt(a * a + b * b)
// }

func getUser() -> (firstName: String, lastName: String) { // tuple to return two values
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")


//function with default values

func printTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i*number)")
    }
}

printTables(for: 5)


// handle errors in function

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage")
} catch {
    print("There was an error")
}



// CHECKPOINT 4

enum rootCause: Error {
    case outOfBounds, noRoot
}

var randomRoot = 0

func guessThePrime (myNumber: Int) throws {
    randomRoot = Int.random(in: 1...100)
    
    if myNumber == 1 {
        throw rootCause.outOfBounds
    }
    while randomRoot * randomRoot != myNumber {
        randomRoot = Int.random(in: 1...100)
        print("Still searching \(randomRoot)")
    }
}

do {
    try guessThePrime(myNumber: 9)
} catch rootCause.noRoot {
    print("There isn't an integer prime for this number!")
} catch rootCause.outOfBounds{
    print("This is an out of bounds number")
}



// CLOSURES

let sayHello = { (name: String) -> String in  // in is the start of the closures's body
    "Hi \(name)!"
}



//CHECKPOINT 5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let _ = luckyNumbers
    .filter { !$0.isMultiple(of: 2) }
    .sorted()
    .map { "\($0) is a lucky number"}
    .forEach { print($0) }


//STRUCT

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

// INIT

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()


//CHECKPOINT 6

struct Car {
    let model: String
    let numberOfSeats: Int
    private (set) var currentGear = 1
    
    mutating func shiftUp() {
        if currentGear + 1 > 10 {
            print("You are already in the top gear!")
        } else {
            currentGear += 1
        }
    }
    
    mutating func shiftDown() {
        if currentGear - 1 > 1 {
            print("You are already in the lowest gear!")
        } else {
            currentGear -= 1
        }
    }
}


// CLASSES

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

// CHECKPOINT 7

class Animal {
    let legs: Int
    init (legs : Int) {
        self.legs = max(legs, 0)
    }
}

class Dog: Animal {
    init() {
        super.init(legs: 4)
    }
    public func speak() {
        print("bark")
    }
}

class Cat: Animal {
    let isTame: Bool
    init ( isTame isTameFromInit: Bool) {
        isTame = isTameFromInit
        super.init(legs: 4)
    }
    public func speak() {
        print("meow?")
    }
}

class Corgi: Dog {
    override func speak() {
        print("YAP YAP YAP! ")
    }
}

class Poodle: Dog {
    override func speak() {
        print("WOOF")
    }
}

class Persian: Cat {
    init() {
        super.init(isTame: true)
    }
    override func speak() {
        print("Yooowwww Yoooowwww")
    }
}

class Lion: Cat {
    init() {
        super.init(isTame: false)
    }
    override func speak() {
        print("Roooooar!!")
    }
}
              
// TESTS

let larry = Corgi()    // create an instance of the Corgi class
let moe   = Poodle()
let curly = Persian()
let shemp = Lion()

print ("Larry is a dog with \(larry.legs) legs. Larry says ")
larry.speak() ; print("\n")
print ("Moe is a dog with \(moe.legs) legs. Moe says ")
moe.speak() ; print("\n")
print ("Curly is a " + (curly.isTame ? "tame " : "wild ") + "cat with \(curly.legs) legs. Curly says ")
curly.speak() ; print ("\n")
print ("Shemp is a " + (shemp.isTame ? "tame " : "wild ") + "cat with \(shemp.legs) legs. Shemp says")
shemp.speak() ; print("\n")


// PROTOCOLS

protocol Purchaseable {
    var name: String { get set }
}

// EXTENSION

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

// an incredibile example

protocol Person {
    var name: String { get }
    func sayHello()
}


extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}


struct Employeee: Person {
    let name: String
}

let taylor = Employeee(name: "Taylor Swift")
taylor.sayHello()


// CHECKPOINT 8

protocol Building {
    var rooms : Int { get }
    var price : Int { get }
    var agent : String { get }
    func salesSummary()
}

struct House: Building {
    var rooms : Int
    var price : Int
    var agent : String
    
    func salesSummary() {
        print("Here we have a beautiful house with \(rooms) rooms. The price will be \(price) Dollars and your agent is \(agent)")
    }
}


struct Office: Building {
    var rooms : Int {
        seats / 2
    }
    
    var seats: Int
    var price : Int
    var agent : String
    
    func salesSummary() {
        print("Here we have a beautiful Office with \(seats) seats in \(rooms) offices.")
    }
}


let house = House(rooms: 6, price: 150_000, agent: "Maxi")
house.salesSummary()

let office = Office(seats: 2, price: 50_000, agent: "Maxi")
office.salesSummary()

let extHoues = House(rooms: 2, price: 50_000, agent: "Maxi")
extHoues.salesSummary()


// OPTIONALS

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

// CHECKPOINT 9

func lastChallenge(_ input: [Int]?) -> Int { return input?.randomElement() ?? Int.random(in: 1...100) }
 
print(lastChallenge(nil))
print(lastChallenge([0, 1]))


// another solution

func pickOne(fromThese someIntegers: [Int]? ) -> Int  { someIntegers?.randomElement() ?? Array(1...100).randomElement()! }

print(pickOne(fromThese: nil))
print(pickOne(fromThese: [0, 1]))
