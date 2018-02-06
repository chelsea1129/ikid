//
//  DadViewController.swift
//  ikid
//
//  Created by Qiaosi Wang on 2/6/18.
//  Copyright © 2018 Qiaosi Chelsea Wang. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var joke: UILabel!
    var isFlipped = false
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnFlip(_ sender: Any) {
        if isFlipped{
            isFlipped = false
            self.joke.text = "What does a zombie vegetarian eat?"
            UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        } else {
            isFlipped = true
            self.joke.text = "GRRAAIINNNNS"
            UIView.transition(with: joke, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
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
