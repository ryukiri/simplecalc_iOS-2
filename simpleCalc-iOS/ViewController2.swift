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
    var history: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for index in 0...history.count - 1 {
            let label = UILabel(frame: CGRect(x: 50, y: index * 25 + 50, width: 300, height: 40))
            label.text = history[index]
            scrollView.addSubview(label)
        }

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
