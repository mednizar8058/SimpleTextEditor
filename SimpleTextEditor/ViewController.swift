//
//  ViewController.swift
//  SimpleTextEditor
//
//  Created by MNizar on 5/31/21.
//  Copyright © 2021 MNizar. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet weak var emojiSegBtn: UISegmentedControl!
    @IBOutlet weak var coloSegBtn: UISegmentedControl!
    @IBOutlet weak var underlineBtn: UIButton!
    @IBOutlet weak var italicBtn: UIButton!
    
    @IBOutlet weak var boldBtn: UIButton!
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func `switch`(_ sender: UISwitch) {
        if (sender.isOn){
            boldBtn.isHidden = true
            italicBtn.isHidden = true
            underlineBtn.isHidden = true
            
            coloSegBtn.isHidden = true
            
            emojiSegBtn.isHidden = true
        }
        else{
            boldBtn.isHidden = false
            italicBtn.isHidden = false
            underlineBtn.isHidden = false
            
            coloSegBtn.isHidden = false
            
            emojiSegBtn.isHidden = false
            
        }
    }
    
    @IBAction func emojiAction(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            input.insertText("😂")
        }
        else if(sender.selectedSegmentIndex == 1){
            input.insertText("😰")
        }
        else{
            input.insertText("😎")

        }
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
        input.font = UIFont.italicSystemFont(ofSize: 16)
    }
    
    @IBAction func underlineAction(_ sender: Any) {
        
        
    }
}

