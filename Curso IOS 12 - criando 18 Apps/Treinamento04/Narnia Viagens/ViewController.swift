//
//  ViewController.swift
//  Narnia viagens
//
//  Created by Virtual Machine on 08/09/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var tabelaViagens: UITableView!
    @IBOutlet weak var viewPacotes: UIView!
   
    
    
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    //let listaViagens: Array<String> = ["Rio de janeiro","Rio de janeiro","Rio de janeiro","Rio de janeiro","Rio de janeiro","Rio de janeiro"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabelaViagens.dataSource = self
        self.tabelaViagens.delegate = self
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius = 10
    
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
      let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) 
        
        let viagemAtual = listaViagens[indexPath.row]
        
         cell.textLabel?.text = viagemAtual.titulo
        
        // cell.textLabel?.text = listaViagens[indexPath.row]
        
       // cell.labelTitulo.text = viagemAtual.titulo
       // cell.labelQuantidadeDias.text = "\(viagemAtual.quantidadeDedias) Dias"
      //  cell.labelPreco.text = viagemAtual.preco
      //  cell.imagemViagem.image = UIImage(named: viagemAtual.caminhoDaImagem)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 175
    }
        
    }

    


