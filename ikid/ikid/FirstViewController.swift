//
//  FirstViewController.swift
//  ikid
//
//  Created by Qiaosi Wang on 2/5/18.
//  Copyright © 2018 Qiaosi Chelsea Wang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var joke: UILabel!
    var isFlipped = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnFlip(_ sender: Any) {
        if isFlipped{
            isFlipped = false
            self.joke.text = "A SQL query goes into a bar, walks up to two tables and asks..."
            UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            isFlipped = true
            self.joke.text = "\"Can I join you guys?\""
            UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

