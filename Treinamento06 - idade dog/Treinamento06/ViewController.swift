//
//  ViewController.swift
//  Treinamento06
//
//  Created by Virtual Machine on 16/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var idade: UILabel!
    @IBOutlet weak var idadeInformada: UITextField!
    
    
    @IBOutlet weak var nadaIfnormado: UILabel!
    
    
    
    @IBAction func descobrirIdade(_ sender: Any) {
        
        
      
        
        print("Opa")
        
        if(idadeInformada.text == "" ){
           
            
            nadaIfnormado.text = "Nada informado"
           
            
        }else{
            
            let idadeDog = Int(idadeInformada.text!)! * 7
            
            idade.text = "A idade do cachorro em anos humanos é :" + String(idadeDog)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

