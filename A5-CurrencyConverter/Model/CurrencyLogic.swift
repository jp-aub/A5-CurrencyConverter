//
//  CurrencyLogic.swift
//  A5-CurrencyConverter
//
//  Created by JP on 2/14/23.
//

import Foundation

struct CurrencyLogic {

    var poundRate : Double = 0.82
    var euroRate : Double = 0.93
    var pesoRate : Double = 18.52
    var yenRate : Double = 133.26
    var poundChecked : Bool = true
    var euroChecked : Bool = true
    var pesoChecked : Bool = true
    var yenChecked : Bool = true
    var poundResult : Double = 0
    var euroResult : Double = 0
    var pesoResult : Double = 0
    var yenResult : Double = 0
    
    mutating func setPoundSwitch(_ switchVal : Bool) {
        if switchVal {
            poundChecked = true
        } else {
            poundChecked = false
        }
    }
    
    mutating func setEuroSwitch(_ switchVal : Bool) {
        if switchVal {
            euroChecked = true
        } else {
            euroChecked = false
        }
    }
    
    mutating func setPesoSwitch(_ switchVal : Bool) {
        if switchVal {
            pesoChecked = true
        } else {
            pesoChecked = false
        }
    }
    
    mutating func setYenSwitch(_ switchVal : Bool) {
        if switchVal {
            yenChecked = true
        } else {
            yenChecked = false
        }
    }
    
    func getPoundSwitch() -> Bool {
        return poundChecked
    }
    
    func getEuroSwitch() -> Bool {
        return euroChecked
    }
    
    func getPesoSwitch() -> Bool {
        return pesoChecked
    }
    
    func getYenSwitch() -> Bool {
        return yenChecked
    }
    
    mutating func convert(_ usdAmount : Int) {
        let usd = Int(usdAmount)
        if poundChecked {
            poundResult = Double(usd) * poundRate
        }
        
        if euroChecked {
            euroResult = Double(usd) * euroRate
        }
        
        if pesoChecked {
            pesoResult = Double(usd) * pesoRate
        }
        
        if yenChecked {
            yenResult = Double(usd) * yenRate
        }
    }
    
    func getPound() -> String {
        // Rounded to 2 decimal places
        return String(format: "%.2f", poundResult)
    }
    
    func getEuro() -> String {
        // Rounded to 2 decimal places
        return String(format: "%.2f", euroResult)
    }
    
    func getPeso() -> String {
        // Rounded to 2 decimal places
        return String(format: "%.2f", pesoResult)
    }
    
    func getYen() -> String {
        // Rounded to 2 decimal places
        return String(format: "%.2f", yenResult)
    }
    
    
}



