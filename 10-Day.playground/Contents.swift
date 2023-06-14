import UIKit

//------Classes-------
//Sınıflar ile structlar arasındaki farklar
//1-Classlarda kendi init lerimizi oluşturmamız gerekmektedir.
class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

//2-Bir sınıfı başka sınıftan oluşturabilirsiniz.
//--------Class inheritance-----
class Dog2 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
class Poodle: Dog2 {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
class Product {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Book: Product {
    var isbn: String
    init(name: String, isbn: String) {
        self.isbn = isbn
        super.init(name: name)
    }
}
