//
//  ViewController.swift
//  Treinamento1.06 - Segue Navegando Entre Telas
//
//  Created by cassio luciano on 19/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func segundaTela(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    @IBAction func voltaPrimiera(segue: UIStoryboardSegue){
        
    }
}

