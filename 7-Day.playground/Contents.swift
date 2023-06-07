import UIKit

//----------Using closures as parameters when they accept parameters-----

let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}
func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}

//----Using closures as parameters when they return values-----
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//--------Shorthand parameter names--------
//https://www.hackingwithswift.com/sixty/6/8/shorthand-parameter-names buradaki açıklama önemli.

//Bu konu üzerine makale yazılacak. 4. bölüm ve daha sonrası gelişmiş closure.


//-----------Closures with multiple parameters---------------
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

//----------Returning closures from functions---------
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel()
result("London"),
let result2 = travel()("London")

//-------Capturing values----------

func makeRepeater(count: Int) -> () -> Void {
    return {
        for _ in 0..<count {
            print($0)
        }
    }
}
let repeater = makeRepeater(count: 3)
repeater("There's no place like home.")

/*Bu serinin altıncı bölümünün sonuna geldiniz, o halde özetleyelim:
 
 Değişkenlere kapanışlar atayabilir, ardından onları daha sonra arayabilirsiniz.
 Kapaklar, normal işlevler gibi parametreleri ve dönüş değerlerini kabul edebilir.
 Kapatmaları işlevlere parametre olarak iletebilirsiniz ve bu kapatmaların kendi parametreleri ve bir dönüş değeri olabilir.
 İşlevinizin son parametresi bir kapatma ise, sondaki kapatma sözdizimini kullanabilirsiniz.
 Swift, $0ve gibi kestirme parametre adlarını otomatik olarak sağlar $1, ancak bunları herkes kullanmaz.
 Kapaklarınızın içinde harici değerler kullanırsanız, kapanışın onlara daha sonra başvurabilmesi için bunlar yakalanır.*/
