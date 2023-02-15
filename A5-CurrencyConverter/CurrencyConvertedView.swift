//
//  CurrencyConvertedView.swift
//  A5-CurrencyConverter
//
//  Created by JP on 2/14/23.
//

import UIKit

class CurrencyConvertedView: UIViewController {
    
    @IBOutlet weak var amountUSD: UILabel!
    @IBOutlet weak var amountGBP: UILabel!
    @IBOutlet weak var amountEuro: UILabel!
    @IBOutlet weak var amountPeso: UILabel!
    @IBOutlet weak var amountYen: UILabel!
    
    @IBOutlet weak var poundStack: UIStackView!
    @IBOutlet weak var euroStack: UIStackView!
    @IBOutlet weak var pesoStack: UIStackView!
    @IBOutlet weak var yenStack: UIStackView!
    
    // Variables for storing conversion values to display to user
    var usd = ""
    var gbp = ""
    var euro = ""
    var peso = ""
    var yen = ""
    
    // Keep track of the checked status to determine element hiding
    var poundChecked : Bool = true
    var euroChecked : Bool = true
    var pesoChecked : Bool = true
    var yenChecked : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkHidden()
        displayConversion()
    }
    
    func checkHidden() {
        // If switch = on, set hidden to false. Otherwise hide stack.
        poundStack.isHidden = poundChecked == true ? false : true
        euroStack.isHidden = euroChecked == true ? false : true
        pesoStack.isHidden = pesoChecked == true ? false : true
        yenStack.isHidden = yenChecked == true ? false : true
    }
    
    func displayConversion() {
        amountUSD.text = "You entered: $ \(usd)"
        amountGBP.text = "£ \(gbp)"
        amountEuro.text = "€ \(euro)"
        amountPeso.text = "Mex$ \(peso)"
        amountYen.text = "¥ \(yen)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
