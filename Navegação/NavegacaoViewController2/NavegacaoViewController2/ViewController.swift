//
//  ViewController.swift
//  NavegacaoViewController2
//
//  Created by cassio luciano on 26/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func btAzul(_ sender: Any) {
        
        performSegue(withIdentifier: "seguinte", sender: nil)
        
    }
    
}

