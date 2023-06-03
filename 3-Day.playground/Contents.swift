import UIKit

//-------------Arithmetic operators---------

let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore //toplama
let difference = firstScore - secondScore //çıkarma
let product = firstScore * secondScore //çarpma
let divided = firstScore / secondScore //bölme
let remainder = 13 % secondScore //mod alma

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 7) //eşit bölünüyor mu ?

//-----------Operator overloading-------------

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

let meaningOfLife = 42
let doubleMeaning = 42 + 42

/*Operatör aşırı yüklemesi, aynı operatörün –  +, *, /, vb. – onu hangi verilerle kullandığınıza bağlı olarak farklı şeyler yapmasına izin verir. Bu, bu sembolleri anlam ifade edecekleri çeşitli yerlerde kullanmamıza izin verir: + kullanarak iki tamsayı toplayabiliriz, + kullanarak bir diziyi diğerine ekleyebiliriz, + kullanarak iki diziyi birleştirebiliriz, vb.*/

//-----------Compound assignment operators-------

var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
//Bu, bizim için daha az yazma, okunacak daha az kod ve ayrıca daha az hata yapma şansı anlamına gelir - her yönden bir kazanç!


//----------Comparison operators---------

let firstScorem = 6
let secondScorem = 4
firstScorem == secondScorem
firstScorem != secondScorem
firstScorem < secondScorem
firstScorem >= secondScorem

"Taylor" <= "Swift"

//---------Conditions-----------

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

//-------------Combining conditions---------
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 { //VE
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 { //VEYA
    print("At least one is over 18")
}

//---------The ternary operator-----------

let firstCardd = 11
let secondCardd = 10
print(firstCardd == secondCardd ? "Cards are the same" : "Cards are different") //Flutterda da aynı kullanım var.

//----------Switch statements----------

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
/*Swift, ifadelerinin eksiksiz olmasını gerektirir switch, yani casekontrol edilecek her olası değer için bir bloğunuz (örneğin, bir numaralandırmanın tüm durumları) veya bir durumunuz olmalıdır default. ifBu, ve için doğru değildir else if, bu nedenle yanlışlıkla bir servis talebini kaçırabilirsiniz.*/

//-------------Range operators-------------
let score1 = 85

switch score1 {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
//Örneğin, aralık 1..<51, 2, 3 ve 4 sayılarını içerirken, aralık 1...51, 2, 3, 4 ve 5 sayılarını içerir.

//----------Operators and conditions summary-------------

/*
 Bu serinin üçüncü bölümünün sonuna geldiniz, o halde özetleyelim:
 
 Swift, aritmetik yapmak ve karşılaştırma yapmak için operatörlere sahiptir; çoğunlukla zaten bildiğiniz gibi çalışırlar.
 Değişkenlerini yerinde değiştiren aritmetik işleçlerin bileşik varyantları vardır: +=, -=, vb.
 Bir koşulun sonucuna göre kod çalıştırmak için if, elseve tuşlarını kullanabilirsiniz .else if
 Swift, bir kontrolü doğru ve yanlış kod bloklarıyla birleştiren üçlü bir operatöre sahiptir. Başka bir kodda görmenize rağmen, onu kendi başınıza kullanmanızı tavsiye etmem.
 Aynı değeri kullanan birden çok koşulunuz varsa, switchbunun yerine kullanmak genellikle daha anlaşılırdır.
 Son sayının hariç tutulması veya dahil edilmesi gerekip gerekmediğine bağlı olarak ..<ve kullanarak aralıklar oluşturabilirsiniz ....*/
