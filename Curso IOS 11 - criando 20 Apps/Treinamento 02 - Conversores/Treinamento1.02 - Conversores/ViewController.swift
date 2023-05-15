//
//  ViewController.swift
//  Treinamento1.02 - Conversores
//
//  Created by Virtual Machine on 28/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btUnit1: UIButton!
    @IBOutlet weak var tfValue: UITextField!
    @IBOutlet weak var btUnit2: UIButton!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbResultUnit: UILabel!
    @IBOutlet weak var lbUnit: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @IBAction func shownext(_ sender: Any) {
        
        switch lbUnit.text!{
        case "Temperatura":
            
            lbUnit.text = "Peso"
            btUnit1.setTitle("Kilograma", for: .normal)
            btUnit2.setTitle("Libra", for: .normal)
        case "Peso":
            
            lbUnit.text = "Moeda"
            btUnit1.setTitle("Real", for: .normal)
            btUnit2.setTitle("Dólar", for: .normal)
        case "Moeda":
            
            lbUnit.text = "Distância"
            btUnit1.setTitle("Metro", for: .normal)
            btUnit2.setTitle("Kilômetro", for: .normal)
        case "Distância":
            
            lbUnit.text = "Ano de nascimento"
            btUnit1.setTitle("Mostrar idade", for: .normal)
            btUnit2.isHidden = true
           
        default:
            lbUnit.text = "Temperatura"
            btUnit1.setTitle("Celsius", for: .normal)
            btUnit2.setTitle("Farenheint", for: .normal)
           
        }
        limpa()
    }
    
    func limpa(){
        
        lbResult.text = "0"
        
    }
    
    @IBAction func convert(_ sender: UIButton?) {
        
        if let sender = sender{
            if sender == btUnit1{
                btUnit2.alpha = 0.5
            } else {
                btUnit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        
        switch lbUnit.text!{
        case "Temperatura":
            calcTemperatura()
        case "Peso":
            calcPeso()
        case "Moeda":
            calcGrana()
        case "Ano de nascimento":
            anoNascimento()
        default:
            calcDistancia()
        }
        view.endEditing(true)
     
    }
    
    func formnat (){
        let result = Double(lbResult.text!)!
        lbResult.text = String(format: "%.2f", result)
    }
    
    
    func anoNascimento(){
        
        guard let ano = Int(tfValue.text!) else {return}
            if btUnit1.alpha == 1.0 {
                lbResultUnit.text = "Ano de nascimento"
                lbResult.text = String(2021 - ano )
                
              
            }
    }
    
    func calcTemperatura(){
        
        guard let temperatura = Double(tfValue.text!) else {return}
            if btUnit1.alpha == 1.0 {
                lbResultUnit.text = "Farenheint"
                lbResult.text = String(temperatura * 1.8 + 32.0)
            }else{
                lbResultUnit.text = "Celsius"
                lbResult.text = String((temperatura - 32.0) / 32.0)
                
            }
        formnat()
        
    }
    
    func calcPeso(){
        guard let peso = Double(tfValue.text!) else {return}
            if btUnit1.alpha == 1.0 {
                lbResultUnit.text = "Loibra"
                lbResult.text = String(peso / 2.2046)
            }else{
                lbResultUnit.text = "Kilograma"
                lbResult.text = String(peso * 2.2046)
                
            }
        formnat()

    }
    
    func calcGrana(){
        guard let grana = Double(tfValue.text!) else {return}
            if btUnit1.alpha == 1.0 {
                lbResultUnit.text = "dólar"
                lbResult.text = String(grana / 3.6)
            }else{
                lbResultUnit.text = "Real"
                lbResult.text = String(grana * 3.6)
                
            }
        formnat()
        
    }
    
    func calcDistancia(){
        
        guard let distancia = Double(tfValue.text!) else {return}
            if btUnit1.alpha == 1.0 {
                lbResultUnit.text = "Kilômetro"
                lbResult.text = String(distancia / 1000.0)
            }else{
                lbResultUnit.text = "Metros"
                lbResult.text = String(distancia * 1000.0)
                
            }
        formnat()
    }
    
    
}


