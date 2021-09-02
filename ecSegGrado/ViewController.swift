//
//  ViewController.swift
//  ecSegGrado
//
//  Created by Ernesto López on 27/08/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var aTextField: UITextField!
    @IBOutlet weak var bTextField: UITextField!
    @IBOutlet weak var cTextField: UITextField!
    @IBOutlet weak var raizUno: UITextField!
    @IBOutlet weak var raizDos: UITextField!
    
    @IBAction func resolver(_ sender: Any) {
        let a = Double(aTextField.text!)!
        let b = Double(bTextField.text!)!
        let c = Double(cTextField.text!)!
        
        let bSquere = b * b
        let discriminant = bSquere - (4 * a * c)
        let isImaginary = discriminant < 0
        let discriminantAbsSqtr = sqrt(fabs(discriminant))
        
        if isImaginary {
            raizUno.text  = "(\(-b/2) + \(discriminantAbsSqtr / (2*a))i"
            raizDos.text = " (\(-b/2) - \(discriminantAbsSqtr / (2*a))i"
        } else {
            let topFormula = -b + discriminantAbsSqtr
            let bottomFormula = 2 * a
            let totalX = topFormula / bottomFormula
            
            let topFormula2 = -b - discriminant
            let totalX2 = topFormula2 / bottomFormula
            
            raizUno.text = "\(totalX)"
            raizDos.text = "\(totalX2)"
            
        }
    }
}



    

