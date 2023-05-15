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

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, AdicionaItensDelegate{

    // MARK: - IBOutlet
    
    @IBOutlet weak var itensTableView: UITableView!
    
   
    // MARK: - Atributos
    //referenciando elementos da tableview
    var delegate : AddRefeicaoDelegate?
   // var itens: [String] = ["Molho e tomate","Queijo","Molho de pimenta","queijo","Leite"]
    
    var itens: [Item] = [Item(nome: "Molho e tomate",calorias:45.9),
                         Item(nome: "Queijo",calorias:42.9),
                 Item(nome: "Molho de pimenta",calorias:4.0),
                 Item(nome: "queijo",calorias:40),
    ]
    var itensSelecionados: [Item] = []
    
    // MARK: - IBOutlet
    @IBOutlet weak var felicidadeTextField: UITextField?
    @IBOutlet weak var nomeTextField: UITextField?
    
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        let botaoAdicionaItem = UIBarButtonItem(title: "Adicionar", style: .plain, target: self, action: #selector(adicionarItem))
        navigationItem.rightBarButtonItem = botaoAdicionaItem
    }
    @objc func adicionarItem(){
        let adicionarItensViewController = adicionarItensViewController(delegate: self)
        navigationController?.pushViewController(adicionarItensViewController, animated: true)
        print("adicionar novo item na lista ")
    }
    
    
    func add(_ item: Item) {
        itens.append(item)
        itensTableView.reloadData()
        
    }
    
    
    // MARK: - UITableViewDataSource
    //numros de linhas -
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //numero de elementos da lista
        return  itens.count
    }
    //IndexPath cuida do posicionamento dos elementos da tabela
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let linhaDaTabela = indexPath.row
        let item = itens[linhaDaTabela]
        
        celula.textLabel?.text = item.nome
        
        
        return celula
    }
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("Add item na tabela teste")
        
        guard let celula = tableView.cellForRow(at: indexPath)else{return}
        if celula.accessoryType == .none{
            celula.accessoryType = .checkmark
            let linhaDaTabela = indexPath.row
            itensSelecionados.append(itens[linhaDaTabela])
        } else {
            celula.accessoryType = .none
            
            let item = itens[indexPath.row]
            if let position = itensSelecionados.index(of: item){
                itensSelecionados.remove(at: position)
            
            //Teste:
            
            for itemSelecionado in itensSelecionados{
                print("Teste de restantes selecionados",itemSelecionado.nome)
            }
            
            }
        }
    }

    
    

    //  MARK: - IBActions
    @IBAction func add(_ sender: Any) {
        
        
        // MARK: - IBOutlet
        //evitando valores nulos
        
        guard let nomeDaRefeicao = nomeTextField?.text  else{
            return
        }
        guard  let felicidadeDaRefeicao = felicidadeTextField?.text, let
                felicidade = Int(felicidadeDaRefeicao)else {
                    return
                }
    
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade, itens: itensSelecionados)
        
        refeicao.itens = itensSelecionados
        
        print("Náo comi \(refeicao.nome) e fiquei triste: \(refeicao.felicidade)")
        
        
        delegate?.add(refeicao)
        navigationController?.popViewController(animated: true)

    }
    
}
