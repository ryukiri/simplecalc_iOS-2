//
//  ViewController2.swift
//  simpleCalc-iOS
//
//  Created by Austin Quach on 1/31/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var label: UILabel!
    var labelText: String!
    var stringPassed = "LABEL"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
        //print(stringPassed)
        //print(labelText)

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! ViewController
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
