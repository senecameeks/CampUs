//
//  DatabaseViewController.swift
//  GymBuddy1.0
//
//  Created by Seneca Meeks on 2/4/17.
//  Copyright © 2017 Hidden Figures. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseDatabase
import FirebaseAuth
import FirebaseRemoteConfig

class DatabaseViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!

    
    
    @IBAction func pressedButton() {

        
        //first take the email and password from the views
        let email = textFieldEmail.text
        let password = textFieldPassword.text
        
       // let rootRef = FIRDatabase.database().reference()
        
        //let childRef = FIRDatabase.database().reference(withPath: "peopleInfo")
        
        //let infoRef = rootRef.child("peopleInfo")
        
        //let emailRef = infoRef.child(email!)
        //let passwordRef = infoRef.child(password!)
    
        FIRAuth.auth()?.createUser(withEmail: email!, password: password!, completion: { (user: FIRUser?, error) in
            if error == nil {
                
            }else{
              
            }
            
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        FIRApp.configure()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
