//
//  ViewController.swift
//  Calculator
//
//  Created by csuftitan on 3/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var calulatorInputLabel: UILabel!
    
    var workings:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //clearAll()
        // Do any additional setup after loading the view.
    }

    func clearAll(){
        workings = ""
        calulatorInputLabel.text = workings
        outputLabel.text = workings
        
    }
    
    func addToWorkings(value: String){
        workings = workings + value
        calulatorInputLabel.text = workings
    }
    
    @IBAction func percentageTap(_ sender: Any) {
        addToWorkings(value: " % ")
    }
    
    @IBAction func devisionTap(_ sender: UIButton) {
        addToWorkings(value: "/")
    }
    @IBAction func multiplicationTap(_ sender: UIButton) {
        addToWorkings(value: "*")
    }
    @IBAction func substractionTap(_ sender: UIButton) {
        addToWorkings(value: "-")
    }
    @IBAction func additionTap(_ sender: UIButton) {
        addToWorkings(value: "+")
    }
    @IBAction func equalTap(_ sender: UIButton) {
        if(!validInput()){
            let alert = UIAlertController(title: "Invalid Input", message: "Can't Calculate based on Input", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
        else{
            let checkForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
            let expression = NSExpression(format: checkForPercent)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            outputLabel.text = resultString
        }
    }
    
    func validInput()-> Bool {
        var count = 0
        var funcCharIndexs = [Int]()
        var hasZero = false
        for char in workings{
            if(char == "0"){
                hasZero = true
            }
            else if(hasZero && char == "/"){
                return false
            }
            else if(specialCharacter(char: char)){
                hasZero = false
                funcCharIndexs.append(count)
            }
            else{
                hasZero = false
            }
            count += 1
        }
        var previous: Int = -1
        
        for index in funcCharIndexs{
            if(index == 0){
                return false
            }
            if(index == workings.count - 1){
                return false
            }
            if(previous != -1){
                if(index - previous == 1){
                    return false
                }
            }
            previous = index
        }
        
        return true
    }
    
    func specialCharacter(char: Character) -> Bool{
        
        if(char == "*"){
            return true
        }
        else  if(char == "/"){
            return true
        }
        else if(char == "+"){
            return true
        }
        else if(char == "-"){
            return true
        }
        else{
            return false
        }
    }
    
    func formatResult (result: Double) -> String{
        if(result.truncatingRemainder(dividingBy: 1) == 0){
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
   
    @IBAction func allClearTap(_ sender: UIButton) {
        if(!workings.isEmpty){
            clearAll()
        }
    }
    
    @IBAction func singleClearTap(_ sender: UIButton) {
        if(!workings.isEmpty){
            workings.removeLast()
            calulatorInputLabel.text = workings
        }
    }
    @IBAction func decimalTap(_ sender: UIButton) {
        addToWorkings(value: ".")
    }
    
    
    @IBAction func sevenTap(_ sender: UIButton) {
        addToWorkings(value: "7")
    }
    
    @IBAction func eightTap(_ sender: UIButton) {
        addToWorkings(value: "8")
    }
    
    @IBAction func nineTap(_ sender: UIButton) {
        addToWorkings(value: "9")
    }
    
    
    @IBAction func fourTap(_ sender: UIButton) {
        addToWorkings(value: "4")
    }

    @IBAction func fiveTap(_ sender: UIButton) {
        addToWorkings(value: "5")
    }
    
    @IBAction func sixTap(_ sender: UIButton) {
            addToWorkings(value: "6")
    }
    
    @IBAction func oneTap(_ sender: UIButton) {
            addToWorkings(value: "1")
    }
    
    
    @IBAction func twoTap(_ sender: UIButton) {
            addToWorkings(value: "2")
    }
    
    @IBAction func threeTap(_ sender: UIButton) {
        addToWorkings(value: "3")
    }
    
    @IBAction func zeroTap(_ sender: UIButton) {
        addToWorkings(value: "0")
    }
    
}

