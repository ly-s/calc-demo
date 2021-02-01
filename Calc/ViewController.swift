//
//  ViewController.swift
//  Calc
//
//  Created by Elijah Silang on 2/1/21.
//

import UIKit

class ViewController: UIViewController {

    //ResultTextField IBOutlet
    @IBOutlet weak var resultTextField: UITextField!
    
    //Button IBOutlet
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    
    struct result {
        var tResult = 0
        var tOperator = ""
        var expression = ""
    }
    
    var res = result()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        
        //Adding target action for buttons
        zeroButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        oneButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        twoButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        threeButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        fourButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        fiveButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        sixButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        sevenButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        eightButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        nineButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        plusButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        subtractButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        multiplyButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        divideButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        equalsButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        clearButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        
    }
    
   //button action
    @objc func buttonAction(_ sender:Any) {
        let button = sender as? UIButton
        
        switch button?.tag {
        
        case 0:
            resultTextField.text?.append((zeroButton.titleLabel?.text)!)
        case 1:
            resultTextField.text?.append((oneButton.titleLabel?.text)!)
        case 2:
            resultTextField.text?.append((twoButton.titleLabel?.text)!)
        case 3:
            resultTextField.text?.append((threeButton.titleLabel?.text)!)
        case 4:
            resultTextField.text?.append((fourButton.titleLabel?.text)!)
        case 5:
            resultTextField.text?.append((fiveButton.titleLabel?.text)!)
        case 6:
            resultTextField.text?.append((sixButton.titleLabel?.text)!)
        case 7:
            resultTextField.text?.append((sevenButton.titleLabel?.text)!)
        case 8:
            resultTextField.text?.append((eightButton.titleLabel?.text)!)
        case 9:
            resultTextField.text?.append((nineButton.titleLabel?.text)!)
        // plus button, tag: 10
        case 10:
            res.tResult = Int((resultTextField.text)!) ?? 0
            res.tOperator = "+"
            resultTextField.text = ""
        // subtract button, tag: 11
        case 11:
            res.tResult = Int((resultTextField.text)!) ?? 0
            res.tOperator = "-"
            resultTextField.text = ""
        // multiply button, tag: 12
        case 12:
            res.tResult = Int((resultTextField.text)!) ?? 0
            res.tOperator = "x"
            resultTextField.text = ""
        // divide button, tag: 13
        case 13:
            res.tResult = Int((resultTextField.text)!) ?? 0
            res.tOperator = "/"
            resultTextField.text = ""
        // equals button, tag: 14
        case 14:
            switch res.tOperator {
            case "+":
                let resultTextFieldInt = Int(resultTextField.text!)
                resultTextField.text = String(res.tResult + resultTextFieldInt!)
            case "-":
                let resultTextFieldInt = Int(resultTextField.text!)
                resultTextField.text = String(res.tResult - resultTextFieldInt!)
            case "x":
                let resultTextFieldInt = Int(resultTextField.text!)
                resultTextField.text = String(res.tResult * resultTextFieldInt!)
            case "/":
                let resultTextFieldInt = Int(resultTextField.text!)
                resultTextField.text = String(res.tResult / resultTextFieldInt!)
            default:
                print("default case")
            }
        // clear button, tag: 15
        case 15:
            resultTextField.text = ""
        
        default:
            resultTextField.text = "default"
        }
        
    }
    
    
}

