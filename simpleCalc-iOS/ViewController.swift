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
    var totalString = ""
    var currentExpression = "+"
    var noCommand = true
    
    @IBOutlet weak var textView_work: UITextView!
    @IBOutlet weak var label_answer: UILabel!
    
    @IBAction func button0(_ sender: Any) {
        textView_work.text = textView_work.text + " 0 "
        totalString += "0"
    }
    
    @IBAction func button1(_ sender: Any) {
        textView_work.text = textView_work.text + " 1 "
        totalString += "1"
    }
    
    @IBAction func button2(_ sender: Any) {
        textView_work.text = textView_work.text + " 2 "
        totalString += "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        textView_work.text = textView_work.text + " 3 "
        totalString += "3"
    }
    
    @IBAction func button4(_ sender: Any) {
        textView_work.text = textView_work.text + " 4 "
        totalString += "4"
    }
    
    @IBAction func button5(_ sender: Any) {
        textView_work.text = textView_work.text + " 5 "
        totalString += "5"
    }
    
    @IBAction func button6(_ sender: Any) {
        textView_work.text = textView_work.text + " 6 "
        totalString += "6"
    }
    
    @IBAction func button7(_ sender: Any) {
        textView_work.text = textView_work.text + " 7 "
        totalString += "7"
    }
    
    @IBAction func button8(_ sender: Any) {
        textView_work.text = textView_work.text + " 8 "
        totalString += "8"
    }
    
    @IBAction func button9(_ sender: Any) {
        textView_work.text = textView_work.text + " 9 "
        totalString += "9"
    }
    
    @IBAction func buttonAdd(_ sender: Any) {
        textView_work.text = textView_work.text + " + "
        currentExpression = "+"
        total += Int(totalString)!
        totalString = ""
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
        if currentExpression == "+" {
            total += Int(totalString)!
        }
        
        totalString = ""
        label_answer.text = String(total)
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        textView_work.text = ""
        label_answer.text = ""
        total = 0
        totalString = ""
    }
    
    
}

