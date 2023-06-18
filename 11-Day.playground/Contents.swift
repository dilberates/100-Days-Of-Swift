import UIKit

//-------Protocols----------
//Protokoller bir şeyin sahip olması gereken özellik ve yöntemlerin tanımıdır.
protocol Identifiable {
    var id:String {get set}
}

struct User: Identifiable {
    var id: String
}

func display(thing:Identifiable){
    print("My ID is \(thing.id)")
}

//---------Protocol inheritance-------

protocol Rule1 {
    func writeName() -> String
}

protocol Rules2 {
    func readName ()
}

protocol Rule3 {
    func updateNAme(name:String)
}

protocol crudProtocol: Rule1,Rules2,Rule3{
    
}
//protokelleri tek bir protokol altında toplayabiliriz.


//----Extensions---------
//varolan türlere, orijinal olarak tasarlanmadıkları şeyleri yapmalarını sağlamak için yöntemler eklemenize olanak tanır.

extension Int{
    func squared() -> Int{
        return self*self
    }
}

let number=8;
number.squared()


//--------Protocol extensions--------

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
pythons.summarize()
beatles.summarize()


//Protokollerin içindeki fonksiyonlara işlevsellik kazandırmak.
protocol Politician {
    var isDirty: Bool { get set }
    func takeBribe()
}
extension Politician {
    func takeBribe() {
        if isDirty {
            print("Thank you very much!")
        } else {
            print("Someone call the police!")
        }
    }
}

//--------Protocol-oriented programming-------
/*Protokoller, uyumlu bir türün sahip olması gereken yöntemleri ve özellikleri açıklar, ancak bu yöntemlerin uygulamalarını sağlamaz.
 Sınıflara benzer şekilde, diğer protokollerin üzerine protokoller oluşturabilirsiniz.
 Uzantılar Int, .
 Protokol uzantıları, protokollere yöntemler ve hesaplanan özellikler eklemenizi sağlar.
 Protokol yönelimli programlama, uygulama mimarinizi bir dizi protokol olarak tasarlama ve ardından varsayılan yöntem uygulamaları sağlamak için protokol uzantılarını kullanma pratiğidir.*/

