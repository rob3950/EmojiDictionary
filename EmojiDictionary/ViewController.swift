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
    
    
var emojis = ["😡","😢","😬","😤","😔","😒","😍","😈"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // main method
        ETableView.dataSource = self
        ETableView.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return emojis.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis [indexPath.row]
        
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
        evc.emojivc = sender as! String
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

