//
//  ViewController.swift
//  slideOutMenu
//
//  Created by HuCharlie on 4/16/15.
//  Copyright (c) 2015 HuCharlie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var openBarBTN: UIBarButtonItem!
    
    @IBOutlet var testLabel: UILabel!

    
    var varView = Int()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        openBarBTN.target = self.revealViewController()
        openBarBTN.action = Selector("revealToggle:")
    
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        
        switch varView {
        case 0:
            testLabel.text = "test-Page-1"
            println("test")
        case 1:
            testLabel.text = "test-Page-2"
        case 2:
            testLabel.text = "test-Page-3"
 
        default:
            testLabel.text = "fun!"
        }

//        if(varView == 0){
//            testLabel.text = "test-Page-1"
//        }else{
//            testLabel.text = "test-Page-2"
//        }

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

