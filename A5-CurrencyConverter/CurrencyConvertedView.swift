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
    var usd = ""
    var gbp = ""
    var euro = ""
    var peso = ""
    var yen = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        amountUSD.text = "$ \(usd)"
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
