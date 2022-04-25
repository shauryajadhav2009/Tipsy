//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Nilesh Jadhav on 3/26/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var SettingsLabel: UILabel!
    
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var LabelForFinalResult: UILabel!
    @IBOutlet weak var ResultLabel: UILabel!
    var bill:String = "0"
    var People:String = "0"
    var tip:String = "0"
    var RResult = "0"
    override func viewDidLoad() {
        super.viewDidLoad()
        TotalLabel.text = "\(RResult)Rs "
    
        SettingsLabel.text = "Split between \(People) people, with \(tip)% tip."

       
    }
    
    @IBAction func RecalculateButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
        
    }
    

   
    }
    


