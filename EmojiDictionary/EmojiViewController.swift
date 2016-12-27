//
//  EmojiViewController.swift
//  EmojiDictionary
//
//  Created by Mac User on 12/18/16.
//  Copyright © 2016 UglyFish. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {
    
    
    @IBOutlet weak var LabelCatogory: UILabel!
    
    @IBOutlet weak var DefnELabel: UILabel!
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    @IBOutlet weak var labelBirthday: UILabel!
    
    var emojivc = Emojitransfer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        EmojiLabel.text = emojivc.stringEmoji
        labelBirthday.text = "birth year: \(emojivc.dob)"
        LabelCatogory.text = emojivc.catogory
        DefnELabel.text = emojivc.definition
                                }
    
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
