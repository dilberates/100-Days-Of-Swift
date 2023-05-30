import UIKit


//----------VARIABLES-------------

//create new variables
var favoriteShow = "Orange is the New Black"
favoriteShow = "The Good Place"
favoriteShow = "Doctor Who"

//----------STRING AND INTEGERS---------

//Swift is what’s known as a type-safe language, which means that every variable must be one specific type.
var age = 38 //INT
var population = 8_000_000 //Swift lets you use underscores as thousands separators


//Strings and integers are different types, and they can’t be mixed
//This is extremely helpful when building apps, because it means Swift will make sure we don’t make mistakes with our data.

//-----------MULTI-LINE STRINGS----------

//If you want multi-line strings you need slightly different syntax: start and end with three double quote marks, like this:

//"This goes\nover multiple\nlines"
var str1 = """
This goes
over multiple
lines
"""
//"This goes over multiple lines"
var str2 = """
This goes \
over multiple \
lines
"""

var burns = """
The best laid schemes \
O’ mice and men \
Gang aft agley
"""

//----------DOUBLES AND BOOLEANS---------

//Swift automatically gives that variable the type Double. For example:
var pi = 3.141 //DOUBLE
var awesome = true //BOOLEAN

//The two main types of numbers you’ll use are called integers and doubles.
//Integers hold whole numbers, such as 0, 1, -100, and 65 million, whereas doubles hold decimal numbers, such as 0.1, -1.001, and 3.141592654.

//When creating a numeric variable, Swift decides whether to consider it an integer or a double based on whether you include a decimal point.
//For example:
var myInt = 1
var myDouble = 1.0
//var total = myInt + myDouble

//-----------SSTRING INTERPOLATION--------

//You can place any type of variable inside your string – all you have to do is write a backslash, \, followed by your variable name in parentheses.
//For example:
var score = 85
var str = "Your score was \(score)"

//---------CONSTANTS------------------

//However, very often you want to set a value once and never change it, and so we have an alternative to the var keyword called let.
let taylor = "swift"

//----------TYPE ANNOTATIONS-----------

//This is called type inference: Swift is able to infer the type of something based on how you created it.
//If you want you can be explicit about the type of your data rather than relying on Swift’s type inference, like this:
let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true


/*Bu serinin ilk bölümünün sonuna geldiniz, o yüzden özetleyelim.

var kullanarak değişkenler ve let kullanarak sabitler yaparsınız .
Sabitleri olabildiğince sık kullanmak tercih edilir.
Dizeler çift tırnak ile başlar ve biter, ancak bunların birden çok satırda çalışmasını istiyorsanız, üç çift tırnak kullanmalısınız.
Tamsayılar tam sayıları, DOUBLE kesirli sayıları ve boolean'lar doğru veya yanlışı tutar.
Dize enterpolasyonu, değerlerini dizenizin içine yerleştirerek diğer değişkenlerden ve sabitlerden dizeler oluşturmanıza olanak tanır.
Swift, her değişkene veya sabite bir tür atamak için tür çıkarımını kullanır, ancak isterseniz açık türler sağlayabilirsiniz.
*/
