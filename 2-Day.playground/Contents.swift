import UIKit

//-------ARRAYS-------

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

//-------SETS---------

//Öğeler herhangi bir sırayla saklanmaz; etkili bir şekilde rastgele bir sırayla depolanırlar.
//Hiçbir öğe bir sette iki kez yer alamaz; tüm öğeler benzersiz olmalıdır.
//Aşağıda tanımlanan iki set aynıdır. ikinci reed veya ikinci blue yok sayılır.
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//--------TUPLES-------

//Bir demetten öğe ekleyemez veya kaldıramazsınız; boyut olarak sabitlenirler.
//Bir demetteki öğelerin türünü değiştiremezsiniz; her zaman yaratıldıkları aynı türlere sahiptirler.
var name = (first: "Taylor", last: "Swift")
name.0
name.first

//-----ARRAYS VS SETS VS TUPLES----------
//Her öğenin kesin bir konuma veya ada sahip olduğu belirli, sabit bir ilgili değerler koleksiyonuna ihtiyacınız varsa, bir demet kullanmalısınız:

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")


//Benzersiz olması gereken bir değerler koleksiyonuna ihtiyacınız varsa veya belirli bir öğenin orada çok hızlı bir şekilde olup olmadığını kontrol edebilmeniz gerekiyorsa, bir küme kullanmalısınız:

let set = Set(["aardvark", "astronaut", "azalea"])


//Yinelemeler içerebilecek bir değerler koleksiyonuna ihtiyacınız varsa veya öğelerinizin sırası önemliyse, bir dizi kullanmalısınız:

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Diziler, üç türden açık ara en yaygın olanıdır.
 
//-------------DICTIONARIES--------------

//Tıpkı diziler gibi sözlükler de parantezlerle başlar ve biter ve her öğe virgülle ayrılır. Ancak, saklamak istediğiniz değeri (örn. 1.78) altında saklamak istediğiniz tanımlayıcıdan (örn. "Taylor Swift") ayırmak için de iki nokta üst üste kullanırız.
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//----------DEFAULT VALUES-----------
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"] //DEFAULT VALUE EKLEMK İÇİN KULLANILIR, NIL GELMESİN DİYE

//--------CREATING EMPTY COLLECTIONS--------

//Empty dictionary
var teams = [String: String]()
teams["Paul"] = "Red"

//Empty Array
var results = [Int]()

//Empty set
var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

//---------------ENUMERATIONS---------------

enum Result {
    case success
    case failure
}

let result4 = Result.failure
//belirli ve güvenli bir şeyi kastettiğimizi söyleme şeklimizdir .

//----------------Enum associated values-----------

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

//Swift'in numaralandırmalarının en güçlü özelliklerinden biri, bir veya daha fazla ilişkili değeri - numaralandırma durumunu daha ayrıntılı olarak tanımlayan ekstra bilgi parçalarını - saklama yetenekleridir.


//---------------ENUM RAW VALUES----------

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
//HER BİRİNE 0 DAN BAŞLAYARAK SAYI ATAR SIRASIYLA
let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

//Bu şekilde ise 1 den başlattık.
let earth2 = Planet2(rawValue: 2)


/*Bu serinin ikinci bölümünün sonuna geldiniz, o halde özetleyelim:

Diziler, kümeler, demetler ve sözlükler, bir grup öğeyi tek bir değer altında saklamanıza izin verir. Her biri bunu farklı şekillerde yapar, dolayısıyla hangisini kullanacağınız, istediğiniz davranışa bağlıdır.
Diziler, öğeleri eklediğiniz sırayla saklar ve bunlara sayısal konumları kullanarak erişirsiniz.
sets öğelerini herhangi bir sıra olmadan ayarlar, böylece onlara sayısal konumları kullanarak erişemezsiniz.
tuples boyutu sabittir ve öğelerinin her birine ad ekleyebilirsiniz. Öğeleri sayısal konumları kullanarak veya adlarınızı kullanarak okuyabilirsiniz.
Sözlükler öğeleri bir anahtara göre saklar ve bu anahtarları kullanarak öğeleri okuyabilirsiniz.
enum, ilgili değerleri gruplandırmanın bir yoludur, böylece bunları yazım hatası olmadan kullanabilirsiniz.
Tamsayılardan veya dizelerden oluşturulabilmeleri için numaralandırmalara ham değerler ekleyebilir veya her durum hakkında ek bilgi depolamak için ilişkili değerler ekleyebilirsiniz.*/

