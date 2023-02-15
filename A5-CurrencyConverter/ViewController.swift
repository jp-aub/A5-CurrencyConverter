//
//  ViewController.swift
//  A5-CurrencyConverter
//
//  Created by JP on 2/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdAmount: UITextField!
    @IBOutlet weak var invalidLabel: UILabel!
    
    var currencyLogic = CurrencyLogic()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        invalidLabel.isHidden = true
    }
    
    @IBAction func poundSelected(_ sender: UISwitch) {
        currencyLogic.setPoundSwitch(sender.isOn)
    }
    
    @IBAction func euroSelected(_ sender: UISwitch) {
        currencyLogic.setEuroSwitch(sender.isOn)
    }
    
    @IBAction func pesoSelected(_ sender: UISwitch) {
        currencyLogic.setPesoSwitch(sender.isOn)
    }
    
    @IBAction func yenSelected(_ sender: UISwitch) {
        currencyLogic.setYenSwitch(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        let notAllowed = CharacterSet.letters
        if usdAmount.text?.rangeOfCharacter(from: notAllowed) == nil {
            invalidLabel.isHidden = true
            let amount = Int(usdAmount.text!)
            currencyLogic.convert(amount!)
            self.performSegue(withIdentifier: "toCurrencyConversion", sender: self)
        } else {
            invalidLabel.isHidden = false
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toCurrencyConversion" {
            let navigation = segue.destination as! CurrencyConvertedView
            navigation.usd = usdAmount.text!
            navigation.gbp = currencyLogic.getPound()
            navigation.euro = currencyLogic.getEuro()
            navigation.peso = currencyLogic.getPeso()
            navigation.yen = currencyLogic.getYen()
            
            // Disable labels as appropriate
            navigation.poundStack?.isHidden = true
        }
        
    }

}




