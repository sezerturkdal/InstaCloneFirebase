//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Sezer on 29.10.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LogoutClicked(_ sender: Any) {
        performSegue(withIdentifier: "toLoginVC", sender: nil)
        print("logout clicked")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
