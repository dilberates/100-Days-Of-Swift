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

struct Employee {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}

//------Typecasting -------
class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

/*Bu serinin onuncu bölümünün sonuna geldiniz, o halde özetleyelim:
 
 Seçenekler, bir değerin yokluğunu açık ve net bir şekilde temsil etmemizi sağlar.
 if letSwift, options kullanarak veya kullanarak paketlerini açmadan kullanmamıza izin vermiyor guard let.
 Paketi açma seçeneklerini bir ünlem işaretiyle zorlayabilirsiniz, ancak paketi açmaya zorlarsanız nilkodunuz çöker.
 Örtülü olarak açılmış isteğe bağlı seçenekler, normal isteğe bağlı seçeneklerin güvenlik kontrollerine sahip değildir.
 İsteğe bağlı bir paketi açmak ve içinde hiçbir şey yoksa varsayılan bir değer sağlamak için nil birleştirme kullanabilirsiniz.
 İsteğe bağlı zincirleme, isteğe bağlı olanı işlemek için kod yazmamıza izin verir, ancak isteğe bağlı boş çıkarsa kod yoksayılır.
 try?Bir fırlatma işlevini isteğe bağlı bir dönüş değerine dönüştürmek veya try!bir hata atılırsa çökmek için kullanabilirsiniz .
 Hatalı girdi verildiğinde başlatıcınızın başarısız olmasına ihtiyacınız varsa, init?()başarısız bir başlatıcı yapmak için kullanın.
 Bir tür nesneyi diğerine dönüştürmek için tip belirlemeyi kullanabilirsiniz.*/


