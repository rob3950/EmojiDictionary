//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by Mac User on 12/16/16.
//  Copyright © 2016 UglyFish. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var ETableView: UITableView!
    
    
    var emojis : [Emojitransfer] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // main method
        ETableView.dataSource = self
        ETableView.delegate = self
        emojis = makeEmojiArray()
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let moji = emojis [indexPath.row]
        cell.textLabel?.text = moji.stringEmoji
        
         return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath , animated: true)
        
        let moji = emojis [indexPath.row]
        performSegue(withIdentifier: "emojiSegway", sender: moji)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print (sender!)
        let evc = segue.destination as! EmojiViewController
        evc.emojivc = sender as! Emojitransfer
        
    }
    
    
    func makeEmojiArray()-> [Emojitransfer] {
        
        let emoji1 = Emojitransfer()
        emoji1.stringEmoji = "😍"
        emoji1.catogory = "smiley"
        emoji1.definition = "I mean i am in love with you"
        emoji1.dob = 2001
        
        
        let emoji2 = Emojitransfer()
        emoji2.stringEmoji = "😡"
        emoji2.catogory = "ssad"
        emoji2.definition = "I mean i am angry"
        emoji2.dob = 2002

        let emoji3 = Emojitransfer()
        emoji3.stringEmoji = "😢"
        emoji3.catogory = "cry"
        emoji3.definition = "I am crying"
        emoji3.dob = 2003
        
        let emoji4 = Emojitransfer()
        emoji4.stringEmoji = "😬"
        emoji4.catogory = "akward"
        emoji4.definition = "I am crying"
        emoji4.dob = 2004
        
        let emoji5 = Emojitransfer()
        emoji5.stringEmoji = "😔"
        emoji5.catogory = "akward"
        emoji5.definition = "I am crying"
        emoji5.dob = 2005

        let emoji6 = Emojitransfer()
        emoji6.stringEmoji = "😤"
        emoji6.catogory = "akward"
        emoji6.definition = "I am crying"
        emoji6.dob = 2006

        let emoji7 = Emojitransfer()
        emoji7.stringEmoji = "😒"
        emoji7.catogory = "akward"
        emoji7.definition = "I am crying"
        emoji7.dob = 2007

        let emoji8 = Emojitransfer()
        emoji8.stringEmoji = "😈"
        emoji8.catogory = "devil"
        emoji8.definition = "I am crying"
        emoji8.dob = 2008
        
        return[emoji1, emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8]

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

