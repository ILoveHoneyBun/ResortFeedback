//
//  WebsiteViewController.swift
//  Feedback
//
//  Created by Tommy Phan on 4/30/21.
//

import UIKit
import WebKit

class WebsiteViewController: UIViewController {

    @IBOutlet weak var website: WKWebView!
    
    var webPage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.website.load(URLRequest(url: URL(string: webPage)! as URL))
        
        // Do any additional setup after loading the view.
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
