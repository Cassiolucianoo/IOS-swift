//
//  ViewController.swift
//  bank
//
//  Created by Virtual Machine on 27/08/21.
//
//user interface
import UIKit

protocol AddRefeicaoDelegate {
    func add(_ refeicao: Refeicao)
}

class ViewController: UIViewController {
    
    //referenciando elementos da tableview
    var delegate : AddRefeicaoDelegate?
    
    @IBOutlet weak var felicidadeTextField: UITextField?
    @IBOutlet weak var nomeTextField: UITextField?
    
    @IBAction func add(_ sender: Any) {
        
        
        //  MARK: -
        
//        if let nomeDaRefeicao = nomeTextField?.text, let felicidadeDaRefeicao =
//            felicidadeTextField?.text{
//            let nome = nomeDaRefeicao
//            if let felicidade = Int(felicidadeDaRefeicao){
//
//                let refeicao = Refeicao(nome: nome, felicidade: felicidade)
//                print("Náo comi \(refeicao.nome) e fiquei triste: \(refeicao.felicidade)")
//
//            }else{
//                print("Deu errado")
//            }
//
//        }
        
        
        //  MARK: - evitando valores nulos 
        
        guard let nomeDaRefeicao = nomeTextField?.text  else{
            return
        }
        guard  let felicidadeDaRefeicao = felicidadeTextField?.text, let
                felicidade = Int(felicidadeDaRefeicao)else {
                    return
                }
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        print("Náo comi \(refeicao.nome) e fiquei triste: \(refeicao.felicidade)")
        
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)

    }
    
}
