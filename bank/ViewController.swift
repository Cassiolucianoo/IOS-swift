//
//  ViewController.swift
//  bank
//
//  Created by Virtual Machine on 27/08/21.
//
//user interface
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tristezasTextField: UITextField!
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        let nome = nomeTextField.text
        let felicidade = tristezasTextField.text
        
        print("Náo comi \(nome) e fiquei triste: \(felicidade)")
        
    }
    
}

