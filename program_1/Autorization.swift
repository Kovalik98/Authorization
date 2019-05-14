//
//  Autorization.swift
//  program_1
//
//  Created by Nazar Kovalik on 5/12/19.
//  Copyright © 2019 Nazar Kovalik. All rights reserved.
//


import UIKit
import RealmSwift




class AutorizationViewController: UIViewController {
    @IBOutlet weak var numberPhone: UITextField!
    
    @IBOutlet weak var passwordAvt: UITextField!
    
    @IBOutlet weak var repeatPassword: UITextField!
    
    let realm = try! Realm()
    var mydata = dataauth()
   
    

    @IBAction func register(_ sender: Any) {
        if passwordAvt.text != repeatPassword.text{
            print("Незбішається пароль")
            return
       
        }
            else{
            mydata.login = numberPhone.text
        
        mydata.password = passwordAvt.text
        try! realm.write{
            realm.add(mydata)
            }
        let viewController = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            self.present(viewController, animated: true)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
       
        
    }
    
    
    
 
    
    
    
   
    
    
}
