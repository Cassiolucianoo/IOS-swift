//
//  RefeicoesTableViewController.swift
//  bank
//
//  Created by Virtual Machine on 02/09/21.
//

import UIKit


class RefeicoesTableViewControlle: UITableViewController, AddRefeicaoDelegate{
    
    var refeicoes = [Refeicao(nome: "Churros da hora",felicidade:4),
                     Refeicao(nome: "Churros chocolate",felicidade:4),
                     Refeicao(nome: "Churros creme",felicidade:4),]
    
    
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
        
        celula.textLabel?.text = refeicao.nome
        
        
        // celula.textLabel?.text = "bla.. bla.. bla..."
        
        return celula
        
    }
    
    func add(_ refeicao: Refeicao){
        print("método add: \(refeicao.nome)")
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController{
            viewController.delegate = self
        }
    }
    
}
