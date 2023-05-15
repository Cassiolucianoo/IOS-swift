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
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(mostrarDetalhes(_:)))
        celula.addGestureRecognizer(longPress)
        
        return celula
        
    }
    
    func add(_ refeicao: Refeicao){
        print("método add: \(refeicao.nome)")
        refeicoes.append(refeicao)
        tableView.reloadData()
    }
    
    @objc func mostrarDetalhes(_ gesture: UILongPressGestureRecognizer){
        
        if gesture.state == .began{
            print("longPress gesture")
            let celula = gesture.view as! UITableViewCell
            guard let indexPath = tableView.indexPath(for: celula) else{ return }
            let refeicao = refeicoes[indexPath.row]

            print("refeicao: \(refeicao.nome)")        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? ViewController{
            viewController.delegate = self
        }
    }
    
}
