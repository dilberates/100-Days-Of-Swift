import UIKit

//---------Creating basic closures-------
let driving = {
    print("I'm driving in my car")
}
driving()
/*Swift, dizgeler ve tamsayılar gibi diğer türler gibi işlevleri kullanmamıza izin verir. Bu, bir işlev oluşturabileceğiniz ve onu bir değişkene atayabileceğiniz, bu değişkeni kullanarak o işlevi çağırabileceğiniz ve hatta bu işlevi diğer işlevlere parametre olarak iletebileceğiniz anlamına gelir.*/

/*Swift'te kapanmaların en yaygın nedenlerinden biri işlevsellik depolamak - "işte bir noktada yapmanı istediğim bazı işler var, ama şimdi değil" diyebilmek. Bazı örnekler:
 
 Bir gecikmeden sonra bazı kodlar çalıştırılıyor.
 Bir animasyon bittikten sonra bazı kodların çalıştırılması.
 Bir indirme bittiğinde bazı kodların çalıştırılması.
 Bir kullanıcı menünüzden bir seçenek seçtiğinde bazı kodların çalıştırılması.
 Kapaklar, bazı işlevleri tek bir değişkende toplamamıza ve ardından bunu bir yerde saklamamıza izin verir. Ayrıca onu bir işlevden döndürebilir ve kapatmayı başka bir yerde saklayabiliriz.*/

//------------Accepting parameters in a closure--------
let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving1("London")

//parametre almaları için bu şekilde bir yöntemö olmakta

//-------Returning values from a closure-------


//değer döndürmek için ;
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//Hiç bir prametere almadan değer döndürme.
let payment = { () -> Bool in
    print("Paying an anonymous person…")
    return true
}
//Bir kapanışı çağırırken parametre adlarını kullanmayız.


//-------------Closures as parameters--------------

let driving2 = {
    print("I'm driving in my car") //return yok parametre yok
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving2)

//----------Trailing closure syntax---------
func travel1(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel1() {
    print("I'm driving in my car")
}
travel1 {
    print("I'm driving in my car")
}

