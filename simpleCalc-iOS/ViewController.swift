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
    var count = 0
    var arr = [Int]()
    var history = [String]()
    var exhistory = [String]()
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var enterButton: UIButton!
    
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
        count += 1
        exhistory.append(totalString)
        exhistory.append(" + ")
        totalString = ""
    }
    
    @IBAction func buttonMinus(_ sender: Any) {
        textView_work.text = textView_work.text + " - "
        currentExpression = "-"
       
        if (count == 0) {
            total += Int(totalString)!
        } else {
            total -= Int(totalString)!
        }
        exhistory.append(totalString)
        exhistory.append(" - ")
        count += 1
        totalString = ""
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        textView_work.text = textView_work.text + " x "
        currentExpression = "x"
        total += Int(totalString)!
        count += 1
        exhistory.append(totalString)
        exhistory.append(" * ")
        totalString = ""
    }
    
    @IBAction func buttonDivide(_ sender: Any) {
        textView_work.text = textView_work.text + " / "
        currentExpression = "/"
        total += Int(totalString)!
        count += 1
        exhistory.append(totalString)
        exhistory.append(" / ")
        totalString = ""
    }
    
    @IBAction func buttonMod(_ sender: Any) {
        textView_work.text = textView_work.text + " % "
        currentExpression = "%"
        total += Int(totalString)!
        totalString = ""
        count += 1
        exhistory.append(totalString)
        exhistory.append(" % ")
    }
    
    @IBAction func buttonEquals(_ sender: Any) {
            equalsButton.isEnabled = true
            if currentExpression == "+" {
                total += Int(totalString)!
            } else if currentExpression == "-" {
                total -= Int(totalString)!
            } else if currentExpression == "x" {
                total *= Int(totalString)!
            } else if currentExpression == "/" {
                total /= Int(totalString)!
            } else if currentExpression == "count" {
                count += 1
                total = count
            } else if currentExpression == "avg" {
                count += 1
                total += Int(totalString)!
                total = total / count
            } else if currentExpression == "%" {
                total %= Int(totalString)!
            }
            
            
            exhistory.append(totalString)
            exhistory.append(" = ")
            exhistory.append(String(total))
            totalString = ""
            label_answer.text = String(total)
            textView_work.text = ""
            count = 0
            total = 0
            
            var historyIndex = ""
            for i in exhistory {
                historyIndex.append(i)
            }
            history.append(historyIndex)
            exhistory = [String]()
        
    }
    
    @IBAction func buttonClear(_ sender: Any) {
        textView_work.text = ""
        label_answer.text = ""
        total = 0
        totalString = ""
        count = 0
        arr = [Int]()
    }
    
    @IBAction func buttonCount(_ sender: Any) {
        textView_work.text = textView_work.text + " count "
        currentExpression = "count"
        arr.append(Int(totalString)!)
        
            count += 1
        totalString = ""
    }

    @IBAction func buttonAvg(_ sender: Any) {
        textView_work.text = textView_work.text + " avg "
        currentExpression = "avg"
        
       
            total += Int(totalString)!
            count += 1
            totalString = ""
    }
    
    @IBAction func buttonFact(_ sender: Any) {
        let topNum = Int(totalString)!
        for i in stride(from: topNum, to: 1, by: -1) {
            if (total == 0) {
                total = topNum
            } else {
                total *= i
            }
        }
        
        label_answer.text = String(total)
    }
    
    @IBAction func buttonEnter(_ sender: Any) {

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc2 = segue.destination as! ViewController2
        vc2.history = history
    }
    
}

