//
//  ViewController.swift
//  Basic-Calculator
//
//  Created by Awani Melvyn on 25/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var buttonSubtract: UIButton!
    @IBOutlet weak var buttonEquals: UIButton!
    @IBOutlet weak var buttonDivide: UIButton!
    @IBOutlet weak var textArea: UITextField!
    
    var valueAsString = ""
    var value1AsString = ""
    var value:Float = 0.00
    var value1:Float = 0.00
    var result: Float = 0.00
    var operation = "z"
    
    
    
    
//    func onPressButton1() {
//        print("Button 1 was pressed")
//        valueAsString += "1"
//        value = Float(valueAsString) ?? 0
//        textArea.text = valueAsString
//        print(value)
//
//    }
    
    @IBAction func onPressButton1(_ sender: Any) {
        print("Button 1 was pressed")
        valueAsString += "1"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton2(_ sender: Any) {
        print("Button 2 was pressed")
        valueAsString += "2"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton3(_ sender: Any) {
        print("Button 3 was pressed")
        valueAsString += "3"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton4(_ sender: Any) {
        print("Button 4 was pressed")
        valueAsString += "4"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton5(_ sender: Any) {
        print("Button 5 was pressed")
        valueAsString += "5"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton6(_ sender: Any) {
        print("Button 6 was pressed")
        valueAsString += "6"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton7(_ sender: Any) {
        print("Button 7 was pressed")
        valueAsString += "7"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton8(_ sender: Any) {
        print("Button 8 was pressed")
        valueAsString += "8"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton9(_ sender: Any) {
        print("Button 9 was pressed")
        valueAsString += "9"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressButton0(_ sender: Any) {
        print("Button 0 was pressed")
        valueAsString += "0"
        value = Float(valueAsString) ?? 0
        textArea.text = valueAsString
        print(value)
    }
    @IBAction func onPressDivideButton(_ sender: Any) {
        print("/ was pressed")
        operation = "/"
        value1 = value
        value = 0
        textArea.text = valueAsString
        valueAsString = ""
        print(value)
    }
    @IBAction func onPressMultiplyButton(_ sender: Any) {
        print("* was pressed")
        operation = "x"
        value1 = value
        value = 0
        valueAsString = ""
        textArea.text = "*"
    }
    @IBAction func onPressAddButton(_ sender: Any) {
        print("+ was pressed")
        value1 = value
        value = 0
        valueAsString = ""
        operation = "+"
        textArea.text = "+"
    }
    @IBAction func onPressSubtractButton(_ sender: Any) {
        print("- was pressed")
        value1 = value
        value = 0
        valueAsString = ""
        operation = "-"
        textArea.text = "-"
    }
    @IBAction func onPressEqualButton(_ sender: Any) {
        print("= was pressed")
        
        switch operation {
        case "+":
            print("Addition was carried out")
            result = value1 + value
            print(result)
            textArea.text = "\(result)"
            value = result
            operation = "z"
            valueAsString = ""
            break
        
        case "-":
            print("Subtraction was carried out")
            result = value1 - value
            print(result)
            textArea.text = "\(result)"
            value = result
            operation = "z"
            valueAsString = ""
            break
        
        case "x":
            print("Multiplication was carried out")
            result = value1 * value
            print(result)
            textArea.text = "\(result)"
            value = result
            operation = "z"
            valueAsString = ""
            break
        
        case "/":
            print("Division was carried out")
            result = value1 / value
            print(result)
            textArea.text = "\(result)"
            value = result
            operation = "z"
            valueAsString = ""
            break
        
        case "z":
            valueAsString = ""
            break
            
        default:
            print("Default")
            valueAsString = ""
            break
        }
        
        
        if(operation == "z"){
            print("Do nothing")
        }
        else{
            textArea.text = "/(result)"
        }
        
        
    }
    
    
    @IBAction func onPressResetButton(_ sender: Any) {
        print("The C (Reset) button was pressed")
        value1AsString = ""
        valueAsString = ""
        value = 0
        value1 = 0
        textArea.text = ""
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

