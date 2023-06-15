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
//Using super init as two keywords is not allowed.

//-------Overriding methods--------

class Cat{
    func makeNoise(){
        print("meow")
    }
}


class See:Cat{
    override func makeNoise() {
        print("yes")
    }
}

let see=See()
see.makeNoise()

//-------Final classes------
//bir sınıfı başka hiç bir sınıf miras almasın istediğimizde sınıfın önüne koyarız.

final class dilber{
    var name:String
    var surname:String
    init(name:String,surname:String){
        self.name=name
        self.surname=surname
    }
}

//class jnDilber :dilber{}


//--------Copying objects-------
//3-Struclar kopyalandığında orjinal struct a bir şey olmaz ama sınıflarda böyle değildir.
class Singer{
    var name="Taylor Swift"
}
var singer=Singer()
print(singer.name)

var singerCopy=singer
singerCopy.name="Selena Gomez"

print(singer.name)


class Persons{
    var name="Dilber ATEŞ"
    init(){
        print("\(name) is alive")
    }
    func printGreeting(){
        print("hello")
    }
    deinit{
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    let person=Persons()
    person.printGreeting()
}

//---------Mutability-------
//mutanting needed with structs.
//Sınıflarda değişmesini istemediğim değişkenleri let ile ayarlarız.
