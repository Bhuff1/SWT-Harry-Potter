//
//  OwlOrNewtViewController.swift
//  Practice HP app
//
//  Created by Ben's MacBook Pro on 3/7/17.
//  Copyright © 2017 Ben's MacBook Pro. All rights reserved.
//

import UIKit

class OwlOrNewtViewController: UIViewController {
    
    @IBOutlet weak var bookTitleOutlet: UITextView!
    
    var bookNumber : String = ""
    var quizChoice : String = ""
    
    var bookTitles = [
        "1": "HARRY POTTER AND THE PHILOSOPHER'S STONE",
        "2": "HARRY POTTER AND THE CHAMBER OF SECRETS",
        "3": "HARRY POTTER AND THE PRISONER OF AZKABAN",
        "4": "HARRY POTTER AND THE GOBLET OF FIRE",
        "5": "HARRY POTTER AND THE ORDER OF THE PHOENIX",
        "6": "HARRY POTTER AND THE HALF-BLOOD PRINCE",
        "7": "HARRY POTTER AND THE DEATHLY HALLOWS"
    ]
    
    @IBAction func owlButtonSelected(_ sender: UIButton) {
        quizChoice = sender.currentTitle!
    }
    
    
    @IBAction func newtButtonSelected(_ sender: UIButton) {
        quizChoice = sender.currentTitle!
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let target = segue.destination as? QuizViewController {
            print("Preparing OwlOrNewtViewController with \(quizChoice) and \(bookNumber)")
            target.owlOrNewt = quizChoice
            target.bookNumber = bookNumber
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let title = bookTitles[bookNumber] {
            bookTitleOutlet.text = "\(title)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Sorting Hat")!)
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
