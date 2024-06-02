//
//  ViewController.swift
//  Treinamento1.09 - SenhaBruta
//
//  Created by cassio luciano on 31/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quantidadeSenha: UITextField!
    @IBOutlet weak var totalCaracteres: UITextField!
    
    @IBOutlet weak var letrasMinusculas: UISwitch!
    @IBOutlet weak var usarNumeros: UISwitch!
    @IBOutlet weak var letrasMaiusculas: UISwitch!
    @IBOutlet weak var caracteresEspeciais: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let senhasViewController = segue.destination as! ViewSenhaGerada
        
        if let numeroDeSenhas = Int(quantidadeSenha.text!){
            senhasViewController.totalSenhas = numeroDeSenhas
        }
        
        if  let totalCaracteres = Int(totalCaracteres.text!){
            senhasViewController.totalCaracteres = totalCaracteres
            
        }
        
        senhasViewController.usarCaracteresEspeciais = caracteresEspeciais.isOn
        senhasViewController.usarLetrasMinusculas = letrasMinusculas.isOn
        senhasViewController.usarLetrasMaiusculas = letrasMaiusculas.isOn
        senhasViewController.usarNumero = usarNumeros.isOn
        view.endEditing(true)
    }

}

