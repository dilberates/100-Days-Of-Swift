import UIKit

//----------For loops---------

let count = 1...10
for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
    print("play")
}
//-------While loops-------

var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//------Repeat loops--------

/*Koşul döngünün sonunda geldiğinden, repeatdöngü içindeki kod her zaman en az bir kez yürütülürken, whiledöngüler ilk çalıştırmadan önce durumlarını kontrol eder. Do-While gibi*/
var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

print("Ready or not, here I come!")


let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled() //karıştırma işlemini yapar
} while random == numbers

//Yukarıdaki kodda karıştırma işlemini yapar ve daha sonra kontrol eder bu karıştırma işlemi yapıldıktan sonra eşitmi komntrolüdür.

//-----------Exiting loops----------
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}
/*Swift'in breakanahtar sözcüğü, ne tür bir döngüden bahsediyor olursak olalım, bir döngüden hemen çıkmamızı sağlar.*/

//-----------Exiting multiple loops--------

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
// break outerLoopher iki döngüden aynı anda çıkmak için kullanın:
//Normal bir break, yalnızca iç döngüden çıkılır - dış döngü kaldığı yerden devam eder.

//----------Skipping items-----------
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }

    print(i)
}
/*Gördüğünüz gibi, breakanahtar kelime bir döngüden çıkar. Ancak sadece mevcut öğeyi atlayıp bir sonraki öğeye geçmek istiyorsanız, continuebunun yerine kullanmalısınız.*/

for i in 1...15 {
    let square = i * i
    if i == 8 {
        continue
    }
    print("\(i) squared is \(square)")
}

//----------Infinite loops---------

/*Sonsuz bir döngü yapmak için, sadece truekoşul olarak kullanın. trueher zaman doğrudur, bu nedenle döngü sonsuza kadar tekrar eder. Uyarı: Lütfen döngünüzden çıkan bir kontrolünüz olduğundan emin olun, aksi takdirde asla bitmeyecektir.*/

var isAlive = false

while isAlive == true {
    print("I'm alive!")
    break
    
}

print("I've snuffed it!")

/*Bu serinin dördüncü bölümünün sonuna geldiniz, o halde özetleyelim:
 
 Döngüler, bir koşul yanlış olana kadar kodu tekrar etmemizi sağlar.
 En yaygın döngü for, döngü içindeki her öğeyi geçici bir sabite atayan döngüdür.
 Döngülerin size verdiği geçici sabite ihtiyacınız yoksa for, bunun yerine bir alt çizgi kullanın, böylece Swift bu işi atlayabilir.
 whileKontrol etmek için açık bir koşul sağladığınız döngüler var .
 Döngülere benzemelerine rağmen while, repeatdöngüler her zaman döngü gövdesini en az bir kez çalıştırır.
 kullanarak tek bir döngüden çıkabilirsiniz break, ancak iç içe döngüleriniz varsa, breakardından dış döngünüzden önce yerleştirdiğiniz etiketi kullanmanız gerekir.
 kullanarak bir döngüdeki öğeleri atlayabilirsiniz continue.
 Sonsuz döngüler siz istemedikçe bitmez ve kullanılarak yapılır while true. Sonsuz döngülerinizi sonlandırmak için bir koşulunuz olduğundan emin olun!*/
