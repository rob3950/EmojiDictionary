//
//  EmojiViewController.swift
//  EmojiDictionary
//
//  Created by Mac User on 12/18/16.
//  Copyright © 2016 UglyFish. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
var emojivc = "no emoji yet"
    
    
    @IBOutlet weak var DefnELabel: UILabel!
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EmojiLabel.text = emojivc
        
        if emojivc ==  "😍" {
            DefnELabel.text = "I am in love with you"
        }
        
        if emojivc ==  "😍" {
            DefnELabel.text = "I am in love with you"
        }
        
        if emojivc ==  "😍" {
            DefnELabel.text = "I am in love with you"
        }
        
        if emojivc ==  "😍" {
            DefnELabel.text = "I am in love with you"
        }
        
        if emojivc ==  "😍" {
            DefnELabel.text = "I am in love with you"
        }
        
        if emojivc ==  "😈" {
            DefnELabel.text = "I am just horny Devil"
        }
        
        if emojivc ==  "😤" {
            DefnELabel.text = "what is up ya all"
        }
        
        if emojivc ==  "😔" {
            DefnELabel.text = "I am just dissapointed / i am sad"
        }
        
        if emojivc ==  "😬" {
            DefnELabel.text = "well this is akward"
        }
        
        if emojivc ==  "😢" {
            DefnELabel.text = "I am sad and about to cry"
        }
        
        if emojivc ==  "😡" {
            DefnELabel.text = "I am angry with you"
        }
        
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
