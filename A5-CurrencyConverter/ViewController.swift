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
    @IBOutlet weak var convertBtn: UIButton!
    var currencyLogic = CurrencyLogic()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        invalidLabel.isHidden = true
        convertBtn.layer.cornerRadius = 12
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
        if usdAmount.text?.rangeOfCharacter(from: notAllowed) == nil && usdAmount.text != "" {
            invalidLabel.isHidden = true
            currencyLogic.convert(usdAmount.text!)
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
            
            // Set currency values
            navigation.usd = usdAmount.text!
            navigation.gbp = currencyLogic.getPound()
            navigation.euro = currencyLogic.getEuro()
            navigation.peso = currencyLogic.getPeso()
            navigation.yen = currencyLogic.getYen()
            
            // Disable labels as appropriate
            navigation.poundChecked = currencyLogic.getPoundSwitch()
            navigation.euroChecked = currencyLogic.getEuroSwitch()
            navigation.pesoChecked = currencyLogic.getPesoSwitch()
            navigation.yenChecked = currencyLogic.getYenSwitch()
        }
        
    }

}




