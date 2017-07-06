//
//  WelcomeViewController.swift
//  Practice HP app
//
//  Created by Ben's MacBook Pro on 3/7/17.
//  Copyright © 2017 Ben's MacBook Pro. All rights reserved.
//

import UIKit

var userName : String = ""

class WelcomeViewController: UIViewController {

    @IBOutlet weak var hogwartsCrestOutlet: UIImageView!
    
    @IBOutlet weak var usersNameOutlet: UITextField!
    
    @IBAction func continuePressed(_ sender: UIButton) {
        if let userNameInput = usersNameOutlet.text {
            if userNameInput == "" {
                let title = "Invalid input!"
                let message = "You must enter a name to begin the examination."
                let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(okAction)
                present(alertController, animated: true, completion: nil)
            }
            else {
                userName = userNameInput
            }
        }
    }
    
    @IBAction func editEnded(_ sender: UITextField) {
        sender.resignFirstResponder()    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Platform 9")!)
        hogwartsCrestOutlet.image = #imageLiteral(resourceName: "Hogwarts Crest")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
