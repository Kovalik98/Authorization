    //
    //  ViewController.swift
    //  program_1
    //
    //  Created by Nazar Kovalik on 5/3/19.
    //  Copyright © 2019 Nazar Kovalik. All rights reserved.
    //

    import UIKit
    import RealmSwift


    class ViewController: UIViewController {
        @IBOutlet weak var loginField: UITextField!
        
        @IBOutlet weak var passwordField: UITextField!
        @IBOutlet weak var errorMessage: UILabel!
        
        
        var text_1:String!
        var text_2:String!
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
           
        
    //     print(Realm.Configuration.defaultConfiguration.fileURL)
            
            

            
           
            
           
        }
        
    //    UserViewController
        @IBAction func enter(_ sender: Any ) {
            
            
            
                let realm = try! Realm()
                let results = realm.objects(dataauth.self)
            for namberUsers in 0..<results.count{
            
                text_1 = results[namberUsers].login
                text_2 = results[namberUsers].password
                if loginField.text == text_1 && passwordField.text == text_2 {
                    let viewController = storyboard?.instantiateViewController(withIdentifier: "UserViewController") as! UserViewController
                    self.present(viewController, animated: true)
                    
                }else{
                    
                }
              
            }
            if loginField.text != text_1 && passwordField.text != text_2 {
                errorMessage.text = "Схоже, ви неправильно вказали номер телефону або пароль"
            }
        }
    }

