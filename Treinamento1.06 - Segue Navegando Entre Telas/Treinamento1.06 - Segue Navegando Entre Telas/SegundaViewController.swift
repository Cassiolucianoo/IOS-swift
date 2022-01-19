//
//  SegundaViewController.swift
//  Treinamento1.06 - Segue Navegando Entre Telas
//
//  Created by cassio luciano on 19/01/22.
//

import UIKit

class SegundaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation
    
    @IBAction func voltaPrimeira(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
