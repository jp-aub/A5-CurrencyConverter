//
//  ViewController.swift
//  A5-CurrencyConverter
//
//  Created by JP on 2/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdAmount: UITextField!
    
    var poundRate : Double = 0.82
    var euroRate : Double = 0.93
    var pesoRate : Double = 18.52
    var yenRate : Double = 133.26
    var poundChecked : Bool = true;
    var euroChecked : Bool = true;
    var pesoChecked : Bool = true;
    var yenChecked : Bool = true;
    
    @IBAction func poundSelected(_ sender: UISwitch) {
        if sender.isOn {
            poundChecked = true
        } else {
            poundChecked = false
        }
    }
    
    @IBAction func euroSelected(_ sender: UISwitch) {
        if sender.isOn {
            euroChecked = true
        } else {
            euroChecked = false
        }
    }
    
    @IBAction func pesoSelected(_ sender: UISwitch) {
        if sender.isOn {
            pesoChecked = true
        } else {
            pesoChecked = false
        }
    }
    
    @IBAction func yenSelected(_ sender: UISwitch) {
        if sender.isOn {
            yenChecked = true
        } else {
            yenChecked = false
        }
    }
    
    @IBAction func convert(_ sender: UIButton) {
        let usd = Int(usdAmount.text!)
        if poundChecked {
            print(convertToGBP(usd!))
        }
        
        if euroChecked {
            print(convertToEuro(usd!))
        }
        
        if pesoChecked {
            print(convertToPeso(usd!))
        }
        
        if yenChecked {
            print(convertToYen(usd!))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func convertToGBP(_ usd: Int) -> Double {
        let converted : Double = Double(usd) * poundRate
        return converted
    }
    
    func convertToEuro(_ usd: Int) -> Double {
        let converted : Double = Double(usd) * euroRate
        return converted
    }
    
    func convertToPeso(_ usd: Int) -> Double {
        let converted : Double = Double(usd) * pesoRate
        return converted
    }
    
    func convertToYen(_ usd: Int) -> Double {
        let converted : Double = Double(usd) * yenRate
        return converted
    }
}




