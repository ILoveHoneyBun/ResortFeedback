//
//  FoodViewController.swift
//  Feedback
//
//  Created by Tommy Phan on 4/28/21.
//

import UIKit

class FoodViewController: UIViewController {

    @IBOutlet weak var firstQuestion: UILabel!
    @IBOutlet weak var secondQuestion: UILabel!
    @IBOutlet weak var thirdQuestion: UILabel!
    @IBOutlet weak var fourthQuestion: UILabel!
    @IBOutlet weak var fifthQuestion: UILabel!
    @IBOutlet weak var firstAnswer: UISegmentedControl!
    @IBOutlet weak var secondAnswer: UISegmentedControl!
    @IBOutlet weak var thirdAnswer: UISegmentedControl!
    @IBOutlet weak var fourthAnswer: UISegmentedControl!
    @IBOutlet weak var fifthAnswer: UISegmentedControl!
    
    var questionOne = ""
    var questionTwo = ""
    var questionThree = ""
    var questionFour = ""
    var questionFive = ""
    var answerOne = ""
    var answerTwo = ""
    var answerThree = ""
    var answerFour = ""
    var answerFive = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstQuestion.layer.masksToBounds = true
        firstQuestion.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        firstQuestion.layer.cornerRadius = 5
        firstQuestion.tintColor = UIColor.white
        
        secondQuestion.layer.masksToBounds = true
        secondQuestion.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        secondQuestion.layer.cornerRadius = 5
        secondQuestion.tintColor = UIColor.white
        
        thirdQuestion.layer.masksToBounds = true
        thirdQuestion.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        thirdQuestion.layer.cornerRadius = 5
        thirdQuestion.tintColor = UIColor.white
        
        fourthQuestion.layer.masksToBounds = true
        fourthQuestion.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        fourthQuestion.layer.cornerRadius = 5
        fourthQuestion.tintColor = UIColor.white
        
        fifthQuestion.layer.masksToBounds = true
        fifthQuestion.backgroundColor = UIColor.init(red: 48/255, green: 173/255, blue: 99/255, alpha: 1)
        fifthQuestion.layer.cornerRadius = 5
        fifthQuestion.tintColor = UIColor.white
        
    }
    
    @IBAction func submitButton(_ sender: Any) {
        
        questionOne = firstQuestion.text!
        questionTwo = secondQuestion.text!
        questionThree = thirdQuestion.text!
        questionFour = fourthQuestion.text!
        questionFive = fifthQuestion.text!
        answerOne = (firstAnswer.titleForSegment(at: firstAnswer.selectedSegmentIndex))!
        answerTwo = (secondAnswer.titleForSegment(at: secondAnswer.selectedSegmentIndex))!
        answerThree = (thirdAnswer.titleForSegment(at: thirdAnswer.selectedSegmentIndex))!
        answerFour = (fourthAnswer.titleForSegment(at: fourthAnswer.selectedSegmentIndex))!
        answerFive = (fifthAnswer.titleForSegment(at: fifthAnswer.selectedSegmentIndex))!
        
        performSegue(withIdentifier: "segue", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SubmitViewController
        vc.firstQuestion = self.questionOne
        vc.secondQuestion = self.questionTwo
        vc.thirdQuestion = self.questionThree
        vc.fourthQuestion = self.questionFour
        vc.fifthQuestion = self.questionFive
        vc.firstAnswer = self.answerOne
        vc.secondAnswer = self.answerTwo
        vc.thirdAnswer = self.answerThree
        vc.fourthAnswer = self.answerFour
        vc.fifthAnswer = self.answerFive
    }

}
