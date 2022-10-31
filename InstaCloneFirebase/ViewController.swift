//
//  ViewController.swift
//  InstaCloneFirebase
//
//  Created by Sezer on 26.10.2022.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func SignInClicked(_ sender: Any) {
        Auth.auth().signIn(withEmail: txtEmail.text ?? "", password: txtPassword.text ?? ""){(authData,error) in
            if error != nil {
                self.showAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "When signing in some errors occurred")
            }else{
                self.performSegue(withIdentifier: "toFeedVC", sender: nil)
            }
        }
    }
    
    @IBAction func SignUpClicked(_ sender: Any) {
        if txtEmail.text != "" && txtPassword.text != ""{
            Auth.auth().createUser(withEmail: txtEmail.text ?? "", password: txtPassword.text ?? ""){(authData,error) in
                if error != nil {
                    self.showAlert(titleInput: "Error", messageInput: error?.localizedDescription ?? "When signing up some errors occurred")
                }else{
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
                
            }
        }else{
          showAlert(titleInput: "Error", messageInput: "Fill the blanks")
        }
       
    }
    
    func showAlert(titleInput:String, messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
         alert.addAction(okButton)
         self.present(alert, animated: true)
    }
    
}

