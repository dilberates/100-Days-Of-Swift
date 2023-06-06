import UIKit

//------------Writing functions----------
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()
/*Kendi fonksiyonlarınızı oluşturmak isteyeceğiniz üç durum vardır:
 
1- En yaygın zaman, birçok yerde aynı işlevselliği istediğiniz zamandır. Burada bir işlev kullanmak, tek bir kod parçasını değiştirebileceğiniz ve işlevinizi kullanan her yerin güncellenmesini sağlayabileceğiniz anlamına gelir.
2- Fonksiyonlar, kodu parçalamak için de kullanışlıdır. Uzun bir işleviniz varsa, olup biten her şeyi takip etmek zor olabilir, ancak onu üç veya dört küçük işleve bölerseniz, takip etmesi daha kolay hale gelir.
3-Son neden daha gelişmiş: Swift, varolan işlevlerden yeni işlevler oluşturmamıza izin verir, bu, işlev birleştirme adı verilen bir tekniktir . Çalışmanızı birden çok küçük işleve bölen işlev kompozisyonu, bu küçük işlevleri çeşitli şekillerde birleştirerek büyük işlevler oluşturmamızı sağlar, biraz Lego tuğlaları gibi.*/

//----------Accepting parameters-------

func square(number: Int) {
    print(number * number)
}
square(number: 8)

//--------Returning values-------

func doMath() -> Int {
    return 5 + 5
}

func doMoreMath() -> Int {
    5 + 5
}

func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}
func greet2(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

func getUser() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}

let user = getUser()
print(user["first"] ?? <#default value#>)

//--------------Parameter labels----------

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

/*Swift, her parametre için iki ad vermemize izin verir: biri işlev çağrılırken harici olarak, diğeri ise işlevin içinde dahili olarak kullanılır. Bu, bir boşlukla ayrılmış iki isim yazmak kadar basittir.*/

func setAge(for person: String, to value: Int) {
    print("\(person) is now \(value)")
}
setAge(for: "Paul", to: 40)

//--------------Omitting parameter labels---------

/*Çağırdığımızda aslında herhangi bir parametre adı göndermediğimizi fark etmişsinizdir - yerine print()diyoruz .print("Hello")print(message: "Hello")
 
 _Harici parametre adınız için bir alt çizgi ( ) kullanarak kendi işlevlerinizde de aynı davranışı elde edebilirsiniz , bunun gibi:*/
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")

//----------Default parameters--------
func greet2(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet2("Taylor")
greet2("Taylor", nicely: false)

//----------Variadic functions--------------
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5,10)

/*...Herhangi bir parametreyi tipinden sonra yazarak değişken yapabilirsiniz . Dolayısıyla, bir Intparametre tek bir tam sayıdır, oysa Int...sıfır veya daha fazla tam sayıdır - potansiyel olarak yüzlerce.*/

//---------------Writing throwing functions--------
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}


//--------------Running throwing functions------
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
//error için do try catch kullanılmalı. 
