//
//  ViewController.swift
//  Treinamento12 - Valor do dolar em real API
//
//  Created by Virtual Machine on 27/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var precoDolar: UILabel!
    
    @IBOutlet weak var btAtualizaValor: UIButton!
    
    @IBAction func atualizarPreco(_ sender: Any) {
        
        self.recuperarValorDolar()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.recuperarValorDolar()
        
        
    }
    
    func formatarPreco(preco: NSNumber ) -> String {
        
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.locale = Locale(identifier: "pt_BR")
        
        if let precoFinal = nf.string(from: preco ) {
            return precoFinal
        }
        
        return "0,00"
        
    }
    
    func recuperarValorDolar(){
        self.btAtualizaValor.setTitle("Atualizando....", for: .normal)
        if let url = URL(string: "https://economia.awesomeapi.com.br/last/USD-BRL"){
            let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                
                if erro == nil{
                    
                    if let dadosRetorno = dados{
                        
                        do{
                            if let objetoJson = try JSONSerialization.jsonObject(with: dadosRetorno, options: []) as? [String: Any]{
                                
                                if let brl = objetoJson["USDBRL"] as? [String: Any]{
                                    
                                    
                                    
                                    if let preco = brl["ask"] as? String {
                                        
                                        
                                        DispatchQueue.main.async(execute: {
                                            
                                            //self.precoDolar.text = "R$ " + String(format: "%.2f", Double(preco)!)
                                            if  let teste =  Double(preco){
                                                self.precoDolar.text = "R$ " + self.formatarPreco(preco: NSNumber(value: teste ))
                                            }

                                            self.btAtualizaValor.setTitle("Atualizar", for: .normal)
                                            
                                        })
                                        
                                    }
                                    
                                }
                                
                            }
                            
                        }catch{
                            
                            print("iiiii Erro ao formatar o retorno.")
                            
                        }
                        
                    }
                    
                    
                }else{
                    print(" iii   Deu ruim na consulta ")
                }
                
            }
            tarefa.resume()
        }
    }
}

