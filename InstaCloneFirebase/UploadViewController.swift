//
//  UploadViewController.swift
//  InstaCloneFirebase
//
//  Created by Sezer on 29.10.2022.
//

import UIKit

class UploadViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var btnUpload: UIButton!
    @IBOutlet weak var imgUpload: UIImageView!
    @IBOutlet weak var txtComment: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgUpload.isUserInteractionEnabled=true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        imgUpload.addGestureRecognizer(gestureRecognizer)

        // Do any additional setup after loading the view.
    }
    @IBAction func ShareClicked(_ sender: Any) {
    }
    
    @objc func chooseImage(){
        let pickerController=UIImagePickerController()
        pickerController.delegate=self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil )
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imgUpload.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.dismiss(animated: true)
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
