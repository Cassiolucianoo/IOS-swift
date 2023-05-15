//
//  ViewController.swift
//  Treinamento03
//
//  Created by Virtual Machine on 02/09/21.
//

import UIKit

class ViewController: UITableViewController {
    
    let refeicoes = ["Churros","Macarrão","Pizza","Churros","Macarrão","Pizza","Churros","Macarrão","Pizza"]

    override func viewDidLoad() {
        super.viewDidLoad()
        print("tableviewcontroller foi carregada")
    }
    
    
    //o numero de linhas
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return refeicoes.count
    }
    
    //O conteudo de cada 
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let refeicao = refeicoes[indexPath.row]
        
        celula.textLabel?.text = refeicao
        
       // celula.textLabel?.text = "bla.. bla.. bla..."
        
        return celula
        
    }


}

