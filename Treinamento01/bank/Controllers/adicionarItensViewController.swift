//
//  adicionarItensViewController.swift
//  bank
//
//  Created by Virtual Machine on 07/09/21.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}


class adicionarItensViewController: UIViewController {
    
    // MARK: - Atributos
    
    var delegate: AdicionaItensDelegate?
    
    init (delegate: AdicionaItensDelegate){
        super.init(nibName: "adicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    // MARK: - IBOutlet
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var caloriasTextField: UITextField!
    
    // MARK: - View life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }



    // MARK: - IBAaction

    @IBAction func adicionarItem(_ sender: Any) {
        
        guard let nome = nameTextField.text, let calorias = caloriasTextField.text else{
            return
        }
        
        
        if let numeroDeCalorias = Double(calorias){
            
            let item = Item(nome: nome, calorias:numeroDeCalorias)
            // navegar para proxima tela: navigationController.push()
            delegate?.add(item)
            navigationController?.popViewController(animated: true)
            //voltar para tela anterior: navigationController.pop()
            
        }
    }
}
