//
//  SubmitViewController.swift
//  Feedback
//
//  Created by Tommy Phan on 4/30/21.
//

import UIKit

class SubmitViewController: UIViewController {

    var firstQuestion = ""
    var secondQuestion = ""
    var thirdQuestion = ""
    var fourthQuestion = ""
    var fifthQuestion = ""
    var firstAnswer = ""
    var secondAnswer = ""
    var thirdAnswer = ""
    var fourthAnswer = ""
    var fifthAnswer = ""
    
    
    @IBOutlet weak var questionOne: UILabel!
    @IBOutlet weak var questionTwo: UILabel!
    @IBOutlet weak var questionThree: UILabel!
    @IBOutlet weak var questionFour: UILabel!
    @IBOutlet weak var questionFive: UILabel!
    
    @IBOutlet weak var answerOne: UILabel!
    @IBOutlet weak var answerTwo: UILabel!
    @IBOutlet weak var answerThree: UILabel!
    @IBOutlet weak var answerFour: UILabel!
    @IBOutlet weak var answerFive: UILabel!
    
    @IBOutlet weak var rateFeedbackLabel: UILabel!
    @IBOutlet weak var rateSegment: UISegmentedControl!
    @IBOutlet weak var gifImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionOne.layer.masksToBounds = true
        questionOne.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        questionOne.layer.cornerRadius = 5
        questionOne.tintColor = UIColor.white
        
        questionTwo.layer.masksToBounds = true
        questionTwo.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        questionTwo.layer.cornerRadius = 5
        questionTwo.tintColor = UIColor.white
        
        questionThree.layer.masksToBounds = true
        questionThree.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        questionThree.layer.cornerRadius = 5
        questionThree.tintColor = UIColor.white
        
        questionFour.layer.masksToBounds = true
        questionFour.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        questionFour.layer.cornerRadius = 5
        questionFour.tintColor = UIColor.white
        
        questionFive.layer.masksToBounds = true
        questionFive.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        questionFive.layer.cornerRadius = 5
        questionFive.tintColor = UIColor.white
        
        answerOne.layer.masksToBounds = true
        answerOne.backgroundColor = UIColor.black
        answerOne.layer.cornerRadius = 5
        answerOne.tintColor = UIColor.white
        
        answerTwo.layer.masksToBounds = true
        answerTwo.backgroundColor = UIColor.black
        answerTwo.layer.cornerRadius = 5
        answerTwo.tintColor = UIColor.white
        
        answerThree.layer.masksToBounds = true
        answerThree.backgroundColor = UIColor.black
        answerThree.layer.cornerRadius = 5
        answerThree.tintColor = UIColor.white
        
        answerFour.layer.masksToBounds = true
        answerFour.backgroundColor = UIColor.black
        answerFour.layer.cornerRadius = 5
        answerFour.tintColor = UIColor.white
        
        answerFive.layer.masksToBounds = true
        answerFive.backgroundColor = UIColor.black
        answerFive.layer.cornerRadius = 5
        answerFive.tintColor = UIColor.white
        
        questionOne.text = firstQuestion
        questionTwo.text = secondQuestion
        questionThree.text = thirdQuestion
        questionFour.text = fourthQuestion
        questionFive.text = fifthQuestion
        answerOne.text = firstAnswer
        answerTwo.text = secondAnswer
        answerThree.text = thirdAnswer
        answerFour.text = fourthAnswer
        answerFive.text = fifthAnswer
        
        rateFeedbackLabel.layer.masksToBounds = true
        rateFeedbackLabel.backgroundColor = UIColor.black
        rateFeedbackLabel.layer.cornerRadius = 5
        rateFeedbackLabel.tintColor = UIColor.white
        
        gifImage.loadGif(name: "Dancing")
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButton(_ sender: Any) {
        
        let dic = ["rating" : rateSegment.titleForSegment(at: rateSegment.selectedSegmentIndex)]
        DBHelper.inst.addRateData(object: dic as! [String:String])
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let wel = sb.instantiateViewController(withIdentifier: "Menu")
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
