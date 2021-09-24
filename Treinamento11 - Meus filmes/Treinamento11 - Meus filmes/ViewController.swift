//
//  ViewController.swift
//  Treinamento11 - Meus filmes
//
//  Created by Virtual Machine on 24/09/21.
//

import UIKit

class ViewController: UITableViewController  {
    
    
    var filmes: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var filme: Filme
        filme = Filme(titulo:"007 - Spectre", descricao: "descricao 1", imagem:  #imageLiteral(resourceName: "filme5")  )
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        filme = Filme(titulo:"007 - Spectre", descricao: "descricao 1", imagem:  #imageLiteral(resourceName: "filme5")  )
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        filme = Filme(titulo:"007 - Spectre", descricao: "descricao 1", imagem:  #imageLiteral(resourceName: "filme5")  )
        filmes.append( filme )
        
        filme = Filme(titulo:"Star Wars", descricao: "descricao 2", imagem: #imageLiteral(resourceName: "filme2"))
        filmes.append( filme )
        
        filme = Filme(titulo:"Impacto Mortal", descricao: "descricao 3", imagem: #imageLiteral(resourceName: "filme3"))
        filmes.append( filme )
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filmes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme: Filme = filmes[ indexPath.row ]
        let celula = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! FilmesCelula
        
        celula.tituloLabel.text = filme.titulo
        celula.filmeImageView.image = filme.imagem
        celula.descricaoLabel.text = filme.descricao
//
//        celula.filmeImageView.layer.cornerRadius = 50
//        celula.filmeImageView.clipsToBounds = true
//
        
        
        
//        celula.textLabel?.text = filme.titulo
//        celula.imageView?.image =  filme.imagem
//        celula.textLabel?.text = filme.descricao
        
        return celula
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detalheFilme"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let filmesSelecionado = self.filmes[ indexPath.row]
                
                let viewControllerDestino = segue.destination as! DetalhesFilmeViewController
                viewControllerDestino.filme = filmesSelecionado
                
            }
              
            }
            
        }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

