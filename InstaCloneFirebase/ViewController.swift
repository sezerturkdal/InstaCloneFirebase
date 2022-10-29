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
        performSegue(withIdentifier: "toFeedVC", sender: nil)
    }
    
    @IBAction func SignUpClicked(_ sender: Any) {
    }
    
}

