//
//  ViewController.swift
//  10seconds
//
//  Created by 金森幹斗 on 2015/05/09.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var num:Double = 0
    
    @IBOutlet var label:UILabel!
    
    var timer:NSTimer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        label.text = String(format: "%.20f", Float(num))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapStart(){

            
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("countup"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func tapStop(){
        
        timer.invalidate()
        
    }
    
    func countup(){
        
        num += 0.01
        label.text = String(format: "%.20f", Float(num))
        //NSLog("%.20f",num)
        
    }


}

