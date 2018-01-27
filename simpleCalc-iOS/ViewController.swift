//
//  ViewController.swift
//  simpleCalc-iOS
//
//  Created by Austin Quach on 1/26/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var total = 0
    var currentExpression = "+"
    var noCommand = true
    
    @IBOutlet weak var textView_work: UITextView!
    @IBOutlet weak var label_answer: UILabel!
    
    @IBAction func button0(_ sender: Any) {
        // If there is a command
        if !noCommand {
            if currentExpression == "+" {
                total += 0
            }
            if currentExpression == "-" {
                total -= 0
            }
            if currentExpression == "x" {
                total *= 0
                
            }
            if currentExpression == "/" {
                label_answer.text = "N/A"
                total = 0;
            }
            textView_work.text = textView_work.text + " 0 "
            label_answer.text = String(total)
        } else {
            noCommand = true
            textView_work.text = textView_work.text + " 0 "
        }
    }
    
    @IBAction func button1(_ sender: Any) {
        // If there is a command
        if !noCommand {
            if currentExpression == "+" {
                total += 1
            }
            if currentExpression == "-" {
                total -= 1
            }
            if currentExpression == "x" {
                total *= 1
            }
            if currentExpression == "/" {
                total /= 1
            }
            textView_work.text = textView_work.text + " 1 "
            label_answer.text = String(total)
        } else {
            
            noCommand = true
            textView_work.text = textView_work.text + " 1 "
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        // If there is a command
        if !noCommand {
            if currentExpression == "+" {
                total += 2
            }
            if currentExpression == "-" {
                total -= 2
            }
            if currentExpression == "x" {
                total *= 2
            }
            if currentExpression == "/" {
                total /= 2
            }
            textView_work.text = textView_work.text + " 2 "
            label_answer.text = String(total)
        } else {
            noCommand = true
            textView_work.text = textView_work.text + " 2 "
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        textView_work.text = textView_work.text + " 3 "
    }
    
    @IBAction func button4(_ sender: Any) {
        textView_work.text = textView_work.text + " 4 "
    }
    
    @IBAction func button5(_ sender: Any) {
        textView_work.text = textView_work.text + " 5 "
    }
    
    @IBAction func button6(_ sender: Any) {
        textView_work.text = textView_work.text + " 6 "
    }
    
    @IBAction func button7(_ sender: Any) {
        textView_work.text = textView_work.text + " 7 "
    }
    
    @IBAction func button8(_ sender: Any) {
        textView_work.text = textView_work.text + " 8 "
    }
    
    @IBAction func button9(_ sender: Any) {
        textView_work.text = textView_work.text + " 9 "
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        textView_work.text = textView_work.text + " + "
        currentExpression = "+"
        noCommand = false
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        textView_work.text = textView_work.text + " - "
        currentExpression = "-"
        noCommand = false
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        textView_work.text = textView_work.text + " x "
        currentExpression = "x"
        noCommand = false
    }
    
    @IBAction func buttonDivide(_ sender: Any) {
        textView_work.text = textView_work.text + " / "
        currentExpression = "/"
        noCommand = false
    }
    
    @IBAction func buttonEquals(_ sender: Any) {
        label_answer.text = String(total)
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        textView_work.text = ""
        label_answer.text = ""
    }
    
    
}

