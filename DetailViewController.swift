//
//  DetailViewController.swift
//  Practice HP app
//
//  Created by Ben's MacBook Pro on 3/8/17.
//  Copyright © 2017 Ben's MacBook Pro. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var questionOutlet: UITextView!
    
    @IBOutlet weak var answerOutlet: UITextView!
    
    @IBOutlet weak var usersAnswerOutlet: UITextView!
   
    var question : Question?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let q = question {
            if let questionText = q.getQuestion() {
                if let answerText = q.getSentenceAnswer() {
                    questionOutlet.text = "\(questionText)"
                    answerOutlet.text = "\(answerText)"
                    usersAnswerOutlet.text = incorrectAnswersStringDictionary[questionText]
            }
            }
        }
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Hogwarts")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
