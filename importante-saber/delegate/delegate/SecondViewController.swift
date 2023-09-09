//
//  SecondViewController.swift
//  delegate
//
//  Created by cassio on 08/09/23.
//
import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var messagelabel: UILabel!
    
    var receivedData: String = "nada carregado" // Para armazenar os dados recebidos
    weak var delegate: DataDelegate?  // Adicione esta propriedade
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        messagelabel.text = receivedData
        delegate?.sendData(data: receivedData) // Enviar dados de volta para a primeira view controller
        
    }
}
