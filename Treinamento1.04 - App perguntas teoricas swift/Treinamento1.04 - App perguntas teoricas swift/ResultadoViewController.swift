//
//  ResultadoViewController.swift
//  Treinamento1.04 - App perguntas teoricas swift
//
//  Created by cassio luciano on 13/12/21.
//

import UIKit

class ResultadoViewController: UIViewController {
    
    @IBOutlet weak var lbRespondidas: UILabel!
    @IBOutlet weak var lbCorretas: UILabel!
    @IBOutlet weak var lbErradas: UILabel!
    @IBOutlet weak var lbResultado: UILabel!
    
    var totalCorretasRespostas: Int = 0
    var totalRespostas: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbRespondidas.text = "Perguntas Respondidas: \(totalRespostas)"
        lbCorretas.text = " perguntas Corretas: \(totalCorretasRespostas)"
        lbErradas.text = "perguntas erradas: \(totalRespostas - totalCorretasRespostas)"
        
        let pontos = totalCorretasRespostas * 100 / totalRespostas
        lbResultado.text = "\(pontos)%"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func voltarInicio(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
