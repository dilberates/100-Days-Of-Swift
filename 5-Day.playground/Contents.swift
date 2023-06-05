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
