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
    
    var senhasGeradas:  GeradorDeSenhas!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Total de senhas geradas: \(totalSenhas)"
        
        senhasGeradas = GeradorDeSenhas(numeroDeLetras: totalCaracteres, usarLetrasMinusculas: usarLetrasMinusculas, usarLetrasMaiusculas: usarLetrasMaiusculas, usarCaracteresEspeciais: usarCaracteresEspeciais, usarNumero:usarNumero)
        gerandoAsSenhas()
    }
    
    func gerandoAsSenhas(){
        tvSenhas.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvSenhas.text = ""
        let senhas = senhasGeradas.gerador(total: totalSenhas)
        for senha in senhas{
            tvSenhas.text.append(senha + "\n\n")
        }
    }
    
    @IBAction func gerarNovamente(_ sender: Any) {
        gerandoAsSenhas()
    }
    
    
}
