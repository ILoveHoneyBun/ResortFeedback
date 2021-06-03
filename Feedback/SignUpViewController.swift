//
//  SignUpViewController.swift
//  Feedback
//
//  Created by Tommy Phan on 4/28/21.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        submitButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        submitButton.layer.cornerRadius = 15
        submitButton.tintColor = UIColor.white
        
        backButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        backButton.layer.cornerRadius = 15
        backButton.tintColor = UIColor.white
        
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        let dic = ["username" : username.text , "password" : password.text]
        DBHelper.inst.addData(object: dic as! [String:String])
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Main")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Main")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
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
