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
    
    /*@IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!*/
    
    @IBOutlet weak var answer_textField: UITextField!
    @IBOutlet weak var work_textView: UITextView!
    
    @IBAction func button0(_ sender: Any) {
        work_textView.text = work_textView.text + " 0 "
    }
    
    @IBAction func button1(_ sender: Any) {
        work_textView.text = work_textView.text + " 1 "
    }
    
    @IBAction func button2(_ sender: UIButton) {
        work_textView.text = work_textView.text + " 2 "
    }
    
    @IBAction func button3(_ sender: Any) {
        work_textView.text = work_textView.text + " 3 "
    }
    
    @IBAction func button4(_ sender: Any) {
        work_textView.text = work_textView.text + " 4 "
    }

    @IBAction func button5(_ sender: Any) {
        work_textView.text = work_textView.text + " 5 "
    }
    
    @IBAction func button6(_ sender: Any) {
        work_textView.text = work_textView.text + " 6 "
    }
    
    @IBAction func button7(_ sender: Any) {
        work_textView.text = work_textView.text + " 7 "
    }
    
    @IBAction func button8(_ sender: Any) {
        work_textView.text = work_textView.text + " 8 "
    }
    
    @IBAction func button9(_ sender: Any) {
        work_textView.text = work_textView.text + " 9 "
    }
    
    @IBAction func button_equals(_ sender: Any) {
    }
    
    @IBAction func button_add(_ sender: Any) {
        work_textView.text = work_textView.text + " + "
    }
    
    @IBAction func button_minus(_ sender: Any) {
        work_textView.text = work_textView.text + " - "
    }

    @IBAction func button_multiply(_ sender: Any) {
        work_textView.text = work_textView.text + " * "
    }
    
    @IBAction func button_divide(_ sender: Any) {
        work_textView.text = work_textView.text + " / "
    }
    
    @IBAction func button_clear(_ sender: Any) {
        work_textView.text = ""
    }
    
    @IBAction func button(_ sender: Any) {
    }
    
}

