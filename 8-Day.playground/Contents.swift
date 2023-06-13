import UIKit

//-------Creating your own structs-------
struct Sport1 {
    var name: String
}
var tennis = Sport1(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"

//------Computed properties-------
struct Sport {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//-------Computed properties------

struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing2 = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//---------Property observers--------

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//En önemli sebep kolaylıktır : bir özellik gözlemcisi kullanmak, özellik her değiştiğinde işlevselliğinizin yürütüleceği anlamına gelir.

//---------Methods---------

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()

//-------Mutating methods-------

//Bir yöntemin içindeki bir özelliği değiştirmek istediğinizde , bunu mutatingaşağıdaki gibi anahtar kelime kullanarak işaretlemeniz gerekir :
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()

//--------Properties and methods of strings-------
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//------------Properties and methods of arrays-------
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

