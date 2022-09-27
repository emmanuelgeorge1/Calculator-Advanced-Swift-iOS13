//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
   private var isFinishedTypingNumber:Bool = true
    private var displayValue:Double{
        get{
            guard let number = Double(displayLabel.text!) else{
                fatalError("Cannot covert text to a double")
            }
            return number
        }
        set{
            displayLabel.text = String(newValue)
        }
        
    }
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
       
        if let calMethod = sender.currentTitle{
            if calMethod == "+/-"{
                displayValue = displayValue * -1
            }
            else if calMethod == "AC"{
                displayLabel.text = ""
            }
           else if calMethod == "%"{
               displayValue = displayValue/100
            }
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle{
            if isFinishedTypingNumber{
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }else{
                if numValue == "."{
                    }
                    let isint = floor(displayValue) == displayValue
                    if isint{
                        return
                    }
                }
                
                
                
                displayLabel.text = displayLabel.text!+numValue
            }
        }
    
    }



