//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TwentyPctButton: UIButton!
    @IBOutlet weak var ZeroPctButton: UIButton!
    @IBOutlet weak var TenPctbutton: UIButton!
    @IBOutlet weak var BillTextField: UITextField!
    @IBOutlet weak var SplitNumber: UILabel!
    var numberOfPeople = "2"
    var Tip = "0.1"
    var bbill = "100"
    var Resultt = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func TipChanged(_ sender: UIButton) {
        TwentyPctButton.isSelected = false
        TenPctbutton.isSelected = false
        ZeroPctButton.isSelected = false
        let Firsttip = sender.currentTitle!
        
        if Firsttip == "10%" {
           Tip = "0.1"
        } else if Firsttip == "20%"
        {
            Tip = "0.2"
        } else if Firsttip == "0%" {
            Tip = "0"
        }
                    
        if Tip == "0.1" {
            TwentyPctButton.isSelected = false
            TenPctbutton.isSelected = true
            ZeroPctButton.isSelected = false
        } else if Tip == "0.2" {
            TwentyPctButton.isSelected = true
            TenPctbutton.isSelected = false
            ZeroPctButton.isSelected = false
            
        } else if Tip == "0"{
            TwentyPctButton.isSelected = false
            TenPctbutton.isSelected = false
            ZeroPctButton.isSelected = true
            
        }

    }
    
    @IBAction func CalculateButton(_ sender: UIButton) {
        let Bill  = BillTextField.text!
        bbill = Bill
        let firstCalculate = Double(bbill)! * Double (Tip)!
        let result = firstCalculate / Double(numberOfPeople)!
        let resultTo1DecimalPlace = String(format: "%.2f", result)
        Resultt = resultTo1DecimalPlace
        self.performSegue(withIdentifier: "goToResult",sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if   segue.identifier == "goToResult"{
            let desTinationVc = segue.destination  as! ResultViewController
            desTinationVc.bill = bbill
            desTinationVc.People = numberOfPeople
            desTinationVc.tip = Tip
            desTinationVc.RResult = Resultt
        }
   }
     
    @IBAction func StepperValueChanged(_ sender: UIStepper) {
        let People = String(format:"%1.f",sender.value)
        SplitNumber.text = People
        numberOfPeople = People
    }
}
