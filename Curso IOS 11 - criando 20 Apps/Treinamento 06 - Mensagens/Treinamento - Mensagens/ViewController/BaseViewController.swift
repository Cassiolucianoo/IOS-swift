//
//  BaseViewController.swift
//  Treinamento - Mensagens
//
//  Created by cassio on 02/06/24.
//

import UIKit

class BaseViewController: UIViewController {
    var message: Message!
    
    @IBOutlet weak var lbMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func changeColor(_ sender: UIButton){
        
    }
}
