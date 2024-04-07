//
//  ViewController.swift
//  BirthdayNoteTaker-06
//
//  Created by Mustafa Engüdar on 25.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterName: UITextField!
    
    @IBOutlet weak var enterBd: UITextField!
    
    @IBOutlet weak var resultName: UILabel!
    
    @IBOutlet weak var resultBd: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //Herhangi bir yerden USERDEFAULTS sayesinde veri Kaydedebilir ve çekebiliriz.
        let savedNameData = UserDefaults.standard.object(forKey: "name")
        let savedBdData = UserDefaults.standard.object(forKey: "birthday")
        
        
         //as? yapabilersen yap demek. as! kesin yap diyerek zorlayarak yaptırmak .
        
        
        if let newName = savedNameData as? String {
            resultName.text = "Name: \(newName)"
        }
        if let newBD = savedBdData as? String {
            resultBd.text = "Birtday: \(newBD)"
        }
        
        
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        
        
        //Herhangi bir yerden USERDEFAULTS sayesinde veri Kaydedebilir ve çekebiliriz.
        UserDefaults.standard.set(enterName.text, forKey: "name")
        UserDefaults.standard.set(enterBd.text, forKey: "birthday")
        
        
        //UserDefaults.standard.synchronize()
        
        // Bir kodun içine String yazmak gerikirse bunu kullan.
        resultName.text = "Name: \(enterName.text!)"
        resultBd.text = "Birthday: \(enterBd.text!)"
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        
        
        let savedNameData = UserDefaults.standard.object(forKey: "name")
        let savedBdData = UserDefaults.standard.object(forKey: "birthday")
        
        /*
        if let newName = savedNameData as? String{
            UserDefaults.standard.removeObject(forKey: "name")
        }
        if let newBD = savedBdData as? String{
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
         YAZILAN KOD BU AMA HATA VERDİĞİ İÇİN AŞAĞIDAKİNİ YAZDIRDI.
         */
        if savedNameData is String {
            UserDefaults.standard.removeObject(forKey: "name")
        }
        if savedBdData is String {
            UserDefaults.standard.removeObject(forKey: "birthday")
        }
          
        
     
    }
    

}

