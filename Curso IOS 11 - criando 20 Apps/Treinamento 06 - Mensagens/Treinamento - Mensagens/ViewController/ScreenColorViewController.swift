//
//  ScreenColorViewController.swift
//  Treinamento - Mensagens
//
//  Created by cassio on 02/06/24.
//

import UIKit

class ScreenColorViewController: BaseViewController {

    
    @IBOutlet weak var viBorder: UILabel!
    
    @IBOutlet weak var swWhiteBorder: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changerBorder(_ sender: Any) {
        
        viBorder.backgroundColor = (sender as AnyObject).isOn ? .white : .clear
    }
}
