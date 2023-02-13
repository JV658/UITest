//
//  ViewController.swift
//  UITest
//
//  Created by Cambrian on 2023-02-06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var fLabel: UILabel!
    @IBOutlet weak var kLable: UILabel!
    var counter: Int = 0
    

    @IBAction func convert(_ sender: UIButton) {
        
        /**
         - get the text field value using cTextField.test
         - change the values of the labels to the cTextField value
         - change the label backgrounds to grey
         */
        guard
            let userIn = cTextField.text,
            let celcius = Double(userIn)
        else {
            cTextField.backgroundColor = .red
            sender.backgroundColor = .red
            return
        }
        
        // (0°C × 9/5) + 32 = 32°F
        var f = (celcius * 9 / 5) + 32
        
        fLabel.text = String(f)
        
        // 0°C + 273.15 = 273.15K
        var k = celcius + 273.15
        kLable.text = String(k)
        
        fLabel.backgroundColor = .gray
        kLable.backgroundColor = .gray
        cTextField.backgroundColor = .white
        sender.backgroundColor = .none
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        fLabel.text = "N/A"
        fLabel.backgroundColor = .red
        
        kLable.text = "N/A"
        kLable.backgroundColor = .red
        
//        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 250)
//        let firstView = UIView(frame: firstFrame)
//        firstView.backgroundColor = .blue
//        view.addSubview(firstView)
//        
//        let secondFrame = CGRect(x: 50, y: 50, width: 50, height: 50)
//        let secondView = UIView(frame: secondFrame)
//        secondView.backgroundColor = .green
////        view.addSubview(secondView)
//        firstView.addSubview(secondView)
    }

    

}

