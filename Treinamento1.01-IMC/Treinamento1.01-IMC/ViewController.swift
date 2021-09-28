//
//  ViewController.swift
//  Treinamento1.01-IMC
//
//  Created by Virtual Machine on 28/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ivResult: UIImageView!
    
    @IBOutlet weak var tfWeight: UITextField!
    
    @IBOutlet weak var tfHeight: UITextField!
    
    @IBOutlet weak var lbResult: UILabel!
    
    @IBOutlet weak var viResult: UIView!
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcular(_ sender: Any) {
        
        //( peso ÷ (altura x altura))
        
        if let height =  Double(tfHeight.text!), let weight  = Double(tfWeight.text!){
            
            imc  = weight / (height*height )
            
            showReults()
            
        }
        
    }
    func  showReults(){
        
        var result: String = ""
        var img: String = ""
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            img  = "abaixo"
            
        case 16..<18.5:
            result = "Abaixo do peso"
            img  = "abaixo"
            
        case 18.5..<25:
            result = "Peso ideal"
            img  = "ideal"
            
        case 25..<30:
            result = "Sobrepeso"
            img  = "sobre"
            
        default:
            result = "Obesidade"
            img  = "obesidade"
            
        }
        
        lbResult.text = "\(Int(imc)): \(result)"
        ivResult.image = UIImage(named: img)
        viResult.isHidden = false
        view.endEditing(true)
        
    }
}

//MENOR QUE 18,5    MAGREZA    0
//ENTRE 18,5 E 24,9    NORMAL    0
//ENTRE 25,0 E 29,9    SOBREPESO    I
//ENTRE 30,0 E 39,9    OBESIDADE    II



