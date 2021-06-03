//
//  MainMenuViewController.swift
//  Feedback
//
//  Created by Tommy Phan on 4/28/21.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var gymButton: UIButton!
    @IBOutlet weak var spaButton: UIButton!
    @IBOutlet weak var foodButton: UIButton!
    @IBOutlet weak var roomButton: UIButton!
    @IBOutlet weak var overallButton: UIButton!
    @IBOutlet weak var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        gymButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        gymButton.layer.cornerRadius = 15
        gymButton.tintColor = UIColor.white
        
        spaButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        spaButton.layer.cornerRadius = 15
        spaButton.tintColor = UIColor.white
        
        foodButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        foodButton.layer.cornerRadius = 15
        foodButton.tintColor = UIColor.white
        
        roomButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        roomButton.layer.cornerRadius = 15
        roomButton.tintColor = UIColor.white
        
        overallButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        overallButton.layer.cornerRadius = 15
        overallButton.tintColor = UIColor.white
        
        logoutButton.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        logoutButton.layer.cornerRadius = 15
        logoutButton.tintColor = UIColor.white
        
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Main")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func gymButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Gym")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func spaButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Spa")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func foodButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Food")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func roomButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Room")
        wel.modalPresentationStyle = .fullScreen
        self.present(wel, animated: true, completion: nil)
        
    }
    
    @IBAction func overallButton(_ sender: Any) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Overall")
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
