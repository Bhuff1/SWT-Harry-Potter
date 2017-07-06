//
//  StartingPointViewController.swift
//  Practice HP app
//
//  Created by Ben's MacBook Pro on 2/16/17.
//  Copyright © 2017 Ben's MacBook Pro. All rights reserved.
//

import UIKit

class StartingPointViewController: UIViewController {

    var buttonPressed : String = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let target = segue.destination as? OwlOrNewtViewController {
            target.bookNumber = "\(buttonPressed)"
        }
    }
    
    @IBAction func bookSelectionPressed(_ sender: UIButton) {
        buttonPressed = sender.currentTitle!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Hogwarts Express")!)

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
