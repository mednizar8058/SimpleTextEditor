//
//  ViewController.swift
//  SimpleTextEditor
//
//  Created by MNizar on 5/31/21.
//  Copyright © 2021 MNizar. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var input: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func emojiAction(_ sender: Any) {
    }
    @IBAction func colorSeg(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            input.textColor = UIColor.black

        }
        else if(sender.selectedSegmentIndex == 1){
            input.textColor = UIColor.blue
        }
        else{
            input.textColor = UIColor.red
        }
    }
    @IBAction func boldAction(_ sender: Any) {
        input.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    @IBAction func italicAction(_ sender: Any) {
        input.font = UIFont.boldSystemFont(ofSize: 16)
    }
    
    @IBAction func underlineAction(_ sender: Any) {
        
    }
}

