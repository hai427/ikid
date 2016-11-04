//
//  FirstViewController.swift
//  iKid
//
//  Created by iGuest on 11/4/16.
//  Copyright © 2016 Hai Nguyen. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var goodJokeView: UIView!
    @IBOutlet var punJokeView: UIView!
    @IBOutlet var dadJokeView: UIView!
    
    @IBOutlet weak var goodJokeLabel: UILabel!
    @IBOutlet weak var punJokeLabel: UILabel!
    @IBOutlet weak var dadJokeLabel: UILabel!
    
    var goodJokeFlipped = true
    var punJokeFlipped = true
    var dadJokeFlipped = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func goodJokePunchline(_ sender: UIButton) {
        goodJokeLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        if(self.goodJokeFlipped) {
            UIView.transition(with: goodJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: {(_ : Bool) -> Void in
                self.goodJokeLabel.text = "Because they spend years at C"
                sender.setTitle("Back", for: UIControlState.normal)
            })
        } else {
            UIView.transition(with: goodJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
                self.goodJokeLabel.text = "Why can't pirates learn the alphabet?"
                sender.setTitle("Next", for: UIControlState.normal)
            })
        }
        self.goodJokeFlipped = !self.goodJokeFlipped
    }
    
    @IBAction func punJokePunchline(_ sender: UIButton) {
        punJokeLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        if(self.punJokeFlipped) {
            UIView.transition(with: punJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: {(_ : Bool) -> Void in
                self.punJokeLabel.text = "A dress"
                sender.setTitle("Back", for: UIControlState.normal)
            })
        } else {
            UIView.transition(with: punJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
                self.punJokeLabel.text = "What does a house wear?"
                sender.setTitle("Next", for: UIControlState.normal)
            })
        }
        self.punJokeFlipped = !self.punJokeFlipped
    }
    
    @IBAction func dadJokePunchline(_ sender: UIButton) {
        dadJokeLabel.text = ""
        sender.setTitle("", for: UIControlState.normal)
        if(self.dadJokeFlipped) {
            UIView.transition(with: dadJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromLeft, animations: nil, completion: {(_ : Bool) -> Void in
                self.dadJokeLabel.text = "You boil the hell out of it"
                sender.setTitle("Back", for: UIControlState.normal)
            })
        } else {
            UIView.transition(with: dadJokeView, duration: 0.5, options: UIViewAnimationOptions.transitionFlipFromRight, animations: nil, completion: {(_ : Bool) -> Void in
                self.dadJokeLabel.text = "How do you make holy water?"
                sender.setTitle("Next", for: UIControlState.normal)
            })
        }
        self.dadJokeFlipped = !self.dadJokeFlipped
    }
}

