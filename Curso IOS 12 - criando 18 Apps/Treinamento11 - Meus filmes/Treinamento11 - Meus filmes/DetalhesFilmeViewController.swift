//
//  DetalhesFilmeViewController.swift
//  Treinamento11 - Meus filmes
//
//  Created by Virtual Machine on 24/09/21.
//

import Foundation
import  UIKit


class DetalhesFilmeViewController: UIViewController{
    

    @IBOutlet weak var filmeImagemView: UIImageView!
    
    @IBOutlet weak var titulofilme: UILabel!
    
    @IBOutlet weak var descricaoFilme: UILabel!
    
    var filme: Filme!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        filmeImagemView.image = filme.imagem
        titulofilme.text = filme.titulo
        descricaoFilme.text = filme.descricao
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
