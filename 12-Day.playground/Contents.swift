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

