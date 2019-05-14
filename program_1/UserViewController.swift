//
//  UserViewController.swift
//  program_1
//
//  Created by Nazar Kovalik on 5/4/19.
//  Copyright © 2019 Nazar Kovalik. All rights reserved.
//

import UIKit
import Alamofire




class UserViewController: UIViewController {
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    
    
    
    var names = [String]()
    var serchURL = "https://reqres.in/api/users/2"
    typealias  JSONStandard = [String:AnyObject]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        callAlamo(url: serchURL)
       
    }
    func callAlamo(url: String)  {
        AF.request(url).responseJSON(completionHandler:{
            response in
            
            self.parseData(JSONData: response.data!)
            
        })
    }
    
    
    
    
    func parseData (JSONData : Data) {
        do{
            var readableJSON = try JSONSerialization.jsonObject(with: JSONData, options: .mutableContainers) as! JSONStandard
         
            if let resultsPage = readableJSON["data"] as? JSONStandard{
                
               
                    let title = resultsPage["first_name"] as! String
                    let description = resultsPage["last_name"] as! String
                    let mainImegeURL = URL(string: resultsPage["avatar"] as! String)
                    let mainImageData = NSData(contentsOf: mainImegeURL!)
                    let mainImage  =  UIImage(data: mainImageData! as Data)
                    firstName.text = title
                    lastName.text = description
                    avatar.image = mainImage
                
            }
            
            
        }
            
        catch{
            print(error)
        }
    }



}
