//
//  ViewController.swift
//  Project-2
//
//  Created by Dilber KILIÇ on 25.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var label1: UILabel!
    @IBOutlet var button3: UIButton!
    
    var countries=[String]()
    var score=0
    var correctAnswer=0
    var count=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*  countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")*/
        
        //Yukarıdaki kod yerine aşağıdaki kodu tercih etmeliyiz.
        
        countries += ["estonia","france","germany","ireland","italy","monaco","nigeria","poland","russia","spain","uk","us"]
        button1.layer.borderWidth=1
        button2.layer.borderWidth=1
        button3.layer.borderWidth=1
        

        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
    
        askQuestion()
        
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title:String
        
        if sender.tag == correctAnswer{
            title="Correct answer."
            score+=1
        }else{
            title="Wrong! That’s the flag of \(countries[sender.tag])"
            score-=1
        }
        
        count+=1
        print(count)
        
        let ac=UIAlertController(title: title, message: "Your score: \(score)", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "Continue", style: .default,handler: askQuestion))
        
        let ac2=UIAlertController(title: "\(title) \n Game Over!", message: "Your score: \(score)", preferredStyle: .alert)
        ac2.addAction(UIAlertAction(title: "Continue", style: .default,handler: askQuestion))
        
       
        
        if count==10{
            present(ac2,animated: true)
            count=0
        }else{
            present(ac, animated: true)
            
        }
    }
    func askQuestion(action: UIAlertAction!=nil){
        
        //Swifte dizileri karıştırmak için shuffle fonksiyonu kullanılır.
        countries.shuffle()
        correctAnswer=Int.random(in: 0...2) //hangi ülkeyi soracağını random seçiyoruz.
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        self.navigationItem.title=countries[correctAnswer].uppercased() //title değeri bu rastgele gelmiş olan şehrin adı olarak yazılıyor.
    }


}

