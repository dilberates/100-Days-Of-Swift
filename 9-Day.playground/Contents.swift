import UIKit

//----------Initializers---------
struct User {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()
user.username = "twostraws"
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


struct Country {
    var name: String
    var usesImperialMeasurements: Bool
    init(countryName: String) {
        name = countryName
        let imperialCountries = ["Liberia", "Myanmar", "USA"]
        if imperialCountries.contains(name) {
            usesImperialMeasurements = true
        } else {
            usesImperialMeasurements = false
        }
    }
}

struct Cabinet {
    var height: Double
    var width: Double
    var area: Double
    init (itemHeight: Double, itemWidth: Double) {
        height = itemHeight
        width = itemWidth
        area = height * width
    }
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)

//----------Referring to the current instance--------


struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//-----------Lazy properties----------


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
/*struct Person {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person(name: "Ed")
lazy var familyTree = FamilyTree()
ed.familyTree
 */

//----------Static properties and methods----------
struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
print(Student.classSize)
private var entropy = Int.random(in: 1...1000)

//----Access control----------
struct Person2 {
    private var id: String

    init(id: String) {
        self.id = id
    }

    func identify() -> String {
        return "My social security number is \(id)"
    }
}

//public izin verir





