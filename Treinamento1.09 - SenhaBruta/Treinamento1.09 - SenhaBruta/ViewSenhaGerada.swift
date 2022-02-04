//
//  ViewSenhaGerada.swift
//  Treinamento1.09 - SenhaBruta
//
//  Created by cassio luciano on 03/02/22.
//
import UIKit
import Foundation

class ViewSenhaGerada: UIViewController {
    
    @IBOutlet weak var tvSenhas: UITextView!
    
    var totalSenhas: Int = 1
    var totalCaracteres: Int = 10
    var usarLetrasMinusculas: Bool!
    var usarLetrasMaiusculas: Bool!
    var usarCaracteresEspeciais: Bool!
    var usarNumero: Bool!
    
    
    override func viewDidLoad() {
        
    }
    
    @IBAction func gerarNovamente(_ sender: Any) {
    }
    
    
}
