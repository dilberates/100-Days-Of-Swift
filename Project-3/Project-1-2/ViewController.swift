//
//  ViewController.swift
//  Project-1-2
//
//  Created by Dilber KILIÇ on 21.06.2023.
//

import UIKit

class ViewController: UITableViewController {
    
   /* UIActivityViewControllerbize otomatik olarak iMessage, e-posta ve Twitter ve Facebook ile paylaşma, görüntüyü fotoğraf kitaplığına kaydetme, kişiye atama, AirPrint aracılığıyla yazdırma ve daha fazlası için işlevsellik verecek. */

    var pictures=[String]()
    override func viewDidLoad() { //ekran yüklendiğinde
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title="Storm View"
        navigationController?.navigationBar.prefersLargeTitles=true
        let fm=FileManager.default //Dosya sistemiyle çalışmamaıza izin verir.
        let path=Bundle.main.resourcePath! //Uygulamaya eklediğim resimlşer hangi pathde
        let items=try! fm.contentsOfDirectory(atPath: path) //bu dosya  bu path
        
        for item in items{
            if item.hasPrefix("nssl"){ //ilk satırı nssl mi?
                pictures.append(item) //nssl ise pictures dizisine ekle.
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "Picture",for: indexPath)
        cell.textLabel?.text=pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc=storyboard?.instantiateViewController(identifier: "Detail") as? DetailViewController{
            vc.selectedImage=pictures[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}

