//
//  ViewController.swift
//  Feedback
//
//  Created by Tommy Phan on 4/28/21.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var rememberLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotButton: UIButton!
    @IBOutlet weak var signButton: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    
    var webPage = ""
    var result = 0
    
    let ud = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var sum = 0.0
        var avg = 0.0
        let data = DBHelper.inst.getRateData()
        for acc in data
        {
            let numbers = Double(acc.rating!)
            let num = numbers!
            
            sum += num
            avg = sum / Double(data.count)
            
        }
        
        
        ratingLabel.text = ("Avg Rating: " + String(avg))
        
        username.text = ud.string(forKey: "username")
        
        rememberLabel.layer.masksToBounds = true
        rememberLabel.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        rememberLabel.layer.cornerRadius = 5
        rememberLabel.tintColor = UIColor.white
        
        loginButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        loginButton.layer.cornerRadius = 15
        loginButton.tintColor = UIColor.white
        loginButton.layer.shadowColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 1)
        
        forgotButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        forgotButton.layer.cornerRadius = 15
        forgotButton.tintColor = UIColor.white
        
        signButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        signButton.layer.cornerRadius = 15
        signButton.tintColor = UIColor.white
        
        signButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        signButton.layer.cornerRadius = 15
        signButton.tintColor = UIColor.white
        
        likeLabel.layer.masksToBounds = true
        likeLabel.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        likeLabel.layer.cornerRadius = 5
        likeLabel.tintColor = UIColor.white
        
        ratingLabel.layer.masksToBounds = true
        ratingLabel.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        ratingLabel.layer.cornerRadius = 5
        ratingLabel.tintColor = UIColor.white
        
        titleLabel.center = CGPoint(x: 210, y: -20)
        likeLabel.center = CGPoint(x: 210, y: 900)
        
        UIView.animate(withDuration: 2.5, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [], animations: {
            self.titleLabel.center = CGPoint(x: 210, y: -20 + 200)
        }, completion: nil)
        
        UIView.animate(withDuration: 2.5, delay: 1.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.0, options: [], animations: {
            self.likeLabel.center = CGPoint(x: 210, y: 470 + 200)
        }, completion: nil)
        
    }
    
    @IBAction func rememberSwitch(_ sender: UISwitch) {
        
        if (sender.isOn == true)
        {
            ud.set(username.text, forKey: "username")
            print("username saved...")
        }
        
    }

    @IBAction func loginButton(_ sender: UIButton) {
        
        let data = DBHelper.inst.getData()
        for acc in data
        {
            if (username.text == acc.username && password.text == acc.password)
            {
                
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let wel = sb.instantiateViewController(withIdentifier: "Menu")
                wel.modalPresentationStyle = .fullScreen
                self.present(wel, animated: true, completion: nil)
                
            }
        }
        
    }
    
    @IBAction func forgotButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "ForgotPassword")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func signupButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "SignUp")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func twitterButton(_ sender: Any) {
        
        webPage = "https://twitter.com/kahalaresort?lang=en"
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
    @IBAction func instagramButton(_ sender: Any) {
        
        webPage = "https://www.instagram.com/kahala_resort/?hl=en"
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        
        webPage = "https://www.facebook.com/KahalaHotelandResort/"
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! WebsiteViewController
        vc.webPage = self.webPage
    }
}

