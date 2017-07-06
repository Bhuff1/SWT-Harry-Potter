//
//  QuizViewController.swift
//  SWT
//
//  Created by Ben's MacBook Pro on 3/13/17.
//  Copyright © 2017 Ben's MacBook Pro. All rights reserved.
//

import UIKit
import GameplayKit

/*
 Global variables
 */

var incorrectAnswersArray : [Int] = [] //Holds the integers that represent incorrectly answered questions.
var incorrectAnswersStringDictionary : [String: String] = [:] //Keys are the questions that were answered incorrectly, values are what the user chose as their answer.
var chosenQuiz : String = "" //This string is concatenated in populateQuestionFields() and represents the key for a quiz in the questionDictionary dictionary in Question.swift.
var randomQuestionDictionary : [Int:Question] = [:]

/*
 Begin QuizViewController class
 */

class QuizViewController: UIViewController {

    var answersArray : [String] = [] //Holds the users selected answers (e.g., ["C","D","A,"A"...])
    var currentQuestion : Int = 1
    var bookNumber : String = ""
    var owlOrNewt : String = ""
    let NUMQUESTIONS : Int = 10 //constant variable; a quiz should always have ten questions
    var image : String = ""
    
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var letterA: UITextView!
    @IBOutlet weak var letterB: UITextView!
    @IBOutlet weak var letterC: UITextView!
    @IBOutlet weak var letterD: UITextView!
    @IBOutlet weak var percentComplete: UILabel!
    
    /*
    Dictionary that holds the background image for a particular quiz.
    */
    
    var imageDictionary = [
        "owl1":"Leaky Cauldron",
        "newt1":"Castle Side",
        "owl2":"Gryffindor's Sword",
        "newt2":"Whomping Willow",
        "owl3":"Knight Bus",
        "newt3":"Marauders Map",
        "owl4":"Goblet of Fire",
        "newt4":"Golden Egg",
        "owl5":"Hog's Head",
        "newt5":"Grimmauld Place",
        "owl6":"Dumbledore's Office",
        "newt6":"Ocean",
        "owl7":"Dragon",
        "newt7":"Shell Cottage"
    ]
    
    /*
    This method sets up the randomQuestionDictionary and ensures randomization of the questions.
    */
    
    func setupQuestionDictonary() {
        let lowercaseQuiz = owlOrNewt.lowercased()
        chosenQuiz = "\(lowercaseQuiz)\(bookNumber)"
        let returnedShuffledIntArray = generateRandomNumberArray((questionDictionary[chosenQuiz]?.count)!)
        for i in 0..<10 {
            randomQuestionDictionary[i+1] = questionDictionary[chosenQuiz]?[returnedShuffledIntArray[i]]
        }
    }
    
    /*
    This method populates the question and multiple choice fields after a letter is pressed.
    */
    
    func populateQuestionFields() {
        percentComplete.text = "\(currentQuestion)/\(NUMQUESTIONS)"
        questionTextView.text = randomQuestionDictionary[currentQuestion]?.getQuestion()
        letterA.text = randomQuestionDictionary[currentQuestion]?.getOptionA()
        letterB.text = randomQuestionDictionary[currentQuestion]?.getOptionB()
        letterC.text = randomQuestionDictionary[currentQuestion]?.getOptionC()
        letterD.text = randomQuestionDictionary[currentQuestion]?.getOptionD()
    }
    
    func generateRandomNumberArray(_ num : Int) -> [Int] {
        var intArray : [Int] = []
        for i in 0...num-1 {
            intArray.append(i+1)
        }
        let shuffledArray = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: intArray)
        return shuffledArray as! [Int]
    }
    
    /*
    This method is called any time one of the letter buttons is pressed, and then calls
     the constructPopUp() method once all the questions have been answered.
    */
    
    @IBAction func optionSelected(_ sender: UIButton) {
        
        if let letterChoice = sender.currentTitle {
            answersArray.append(letterChoice)
        }
        
        currentQuestion += 1
        
        if currentQuestion <= NUMQUESTIONS {
            populateQuestionFields()
            percentComplete.text = "\(currentQuestion)/\(NUMQUESTIONS)"
        } else {
            constructPopUp()
        }
    }
    
    /*
    This method is called once the quiz has been completed. Inside the method, it calculates the score and what, if any, OWL or NEWT will be awarded.
    */
    
    func constructPopUp() {
        let score = calculateScore()
        if let outputString = calculateOWLorNEWT(score) {
            
            let title = "Quiz Completed!"
            let message = "\(userName), your score is \(score)%. \n\(outputString)\n"
            
            let alertController =
                UIAlertController(title: title,
                                  message: message,
                                  preferredStyle: .alert)
            
            if(incorrectAnswersArray.isEmpty){
                let okOnlyAction =
                    UIAlertAction(title: "OK",
                                  style: .cancel,
                                  handler: { (action) -> Void in
                                    incorrectAnswersArray.removeAll()
                                    var top: UIViewController = self;
                                    while !top.isKind(of: StartingPointViewController.self) {
                                        top = top.presentingViewController!;
                                    }
                                    top.dismiss(animated: false, completion: nil)
                    })
                alertController.addAction(okOnlyAction)
                present(alertController, animated: true, completion: nil)
            } else {
                let okAction =
                    UIAlertAction(title: "OK",
                                  style: .cancel,
                                  handler: { (action) -> Void in
                                    incorrectAnswersArray.removeAll()
                                    var top: UIViewController = self;
                                    while !top.isKind(of: StartingPointViewController.self) {
                                        top = top.presentingViewController!;
                                    }
                                    top.dismiss(animated: false, completion: nil)
                    })
                
                let seeMissedQuestions = UIAlertAction (title: "Answers",
                                                        style: .default,
                                                        handler: { (action) -> Void in
                                                            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                                                            let controller = storyboard.instantiateViewController(withIdentifier: "IncorrectNav")
                                                            self.present(controller, animated: true, completion: nil)
                                                            
                })
                alertController.addAction(okAction)
                alertController.addAction(seeMissedQuestions)
                present(alertController,
                        animated: true,
                        completion: nil)
            }
        }
    }
    
    /*
     This method calculates the raw score, and appends incorrectly answered questions to incorrectAnswersArray. It also calls appendIncorrectAnswer() which saves the user's selected answer for later viewing.
    */
    
    func calculateScore() -> Double {
        var incorrect = 0
        var correct = 0
        
        for i in 0..<NUMQUESTIONS {
            if answersArray[i] == randomQuestionDictionary[i+1]?.getAnswer() {
                correct+=1
            } else {
                incorrect+=1
                incorrectAnswersArray.append(i+1)
                appendIncorrectAnswer(currentSubscript: i, letterChoice: answersArray[i])
            }
        }
        let percentage : Double = Double(correct)/Double(NUMQUESTIONS)
        let score = 100 * percentage;
        
        return Double(score)
    }
    
    /*
    This method takes the raw score and determines what level of OWL or NEWT is awarded.
    */
    
    func calculateOWLorNEWT(_ rawScore : Double) -> String? {
        let uppercasedOwlOrNewt = owlOrNewt.uppercased()
        var outputString : String?
        if rawScore>=90 {
            outputString = "Outstanding \(uppercasedOwlOrNewt) awarded!"
        } else if rawScore >= 80 {
            outputString = "Exceeds Expectations \(uppercasedOwlOrNewt) awarded!"
        } else if rawScore >= 70 {
            outputString = "Acceptable \(uppercasedOwlOrNewt) awarded!"
        } else if rawScore >= 60 {
            outputString = "Poor. \nNo \(uppercasedOwlOrNewt) awarded."
        } else if rawScore >= 10 {
            outputString = "Dreadful. \nNo \(uppercasedOwlOrNewt) awarded."
        } else {
            outputString = "Troll. \nNo \(uppercasedOwlOrNewt) awarded."
        }
        return outputString
    }
    
    /*
    This method saves the user's incorrectly answered selection for later viewing.
    */
    
    func appendIncorrectAnswer(currentSubscript i : Int, letterChoice letter: String) {
        switch letter {
        case "A" :
            incorrectAnswersStringDictionary[(randomQuestionDictionary[i+1]?.getQuestion()!)!] = randomQuestionDictionary[i+1]?.getOptionA()
        case "B" :
            incorrectAnswersStringDictionary[(randomQuestionDictionary[i+1]?.getQuestion()!)!] = randomQuestionDictionary[i+1]?.getOptionB()
        case "C" :
            incorrectAnswersStringDictionary[(randomQuestionDictionary[i+1]?.getQuestion()!)!] = randomQuestionDictionary[i+1]?.getOptionC()
        case "D" :
            incorrectAnswersStringDictionary[(randomQuestionDictionary[i+1]?.getQuestion()!)!] = randomQuestionDictionary[i+1]?.getOptionD()
        default :
            incorrectAnswersStringDictionary[""] = ""
            
        }
    }
    
    func handleDoubleTap(_ sender : UITapGestureRecognizer) {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            incorrectAnswersArray.removeAll()
            var top: UIViewController = self;
            while !top.isKind(of: OwlOrNewtViewController.self) {
                top = top.presentingViewController!;
            }
            top.dismiss(animated: false, completion: nil)        }
    }
    
    func handleMoreThanTwoTaps(_ sender : UITapGestureRecognizer) {
        return
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupQuestionDictonary()
        populateQuestionFields()
        if let imageSelection = imageDictionary[chosenQuiz] {
            self.view.backgroundColor = UIColor(patternImage: UIImage(named: imageSelection)!)
        }
    
        for t in 1...3 {
            let moreThanTwoTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(QuizViewController.handleMoreThanTwoTaps))
            moreThanTwoTapRecognizer.numberOfTapsRequired = 50
            moreThanTwoTapRecognizer.numberOfTouchesRequired = t
            view.addGestureRecognizer(moreThanTwoTapRecognizer)
            
            let doubleTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(QuizViewController.handleDoubleTap))
            doubleTapRecognizer.numberOfTapsRequired = 2
            doubleTapRecognizer.numberOfTouchesRequired = t
            view.addGestureRecognizer(doubleTapRecognizer)
            doubleTapRecognizer.require(toFail: moreThanTwoTapRecognizer)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

