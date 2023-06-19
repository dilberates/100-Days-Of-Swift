import UIKit

//------OPTIONALS---------

//--------Handling missing data--------
//nil == null

var age: Int? = nil
age=23

//----------Unwrapping optionals---------
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}
//if let içini kontrol etmemizi sağlar.

//-----------Unwrapping with guard---------

func greet(_ name:String?){
    guard let unwrapped=name else{
        print("You didn't provide a name!")
        return
    }
    
    print("Hello \(unwrapped) !")
}

greet(nil)

func double(number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5
if let doubled = double(number: input) {
    print("\(input) doubled is \(doubled).")
}

//----------Force unwrapping-----------

//let num = Int(str)!
//boş gelmiyeceğinden emin olduğumuz kısımlara koyarız.

//----------Implicitly unwrapped optionals---------

//let age: Int! = nil

//---------Nil coalescing---------
//let user = username(for: 15) ?? "Anonymous"

//-----Optional chaining--------
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

//---------Optional try-------

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//hata olmayacağına eminsek
try! checkPassword("sekrit")
print("OK!")

//hatanın ne olduğu ile ililenmiyorsak.
/*if let result = try? runRiskyFunction() {
    print(result)
}*/

//-------------Failable initializers--------


