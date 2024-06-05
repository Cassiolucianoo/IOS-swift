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
    var userWhiteBorder: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        viBorder.backgroundColor = userWhiteBorder ? .white : .clear
        if let message = self.message {
            lbMessage.text = message.text
            lbMessage.textColor = message.textColor
            lbMessage.backgroundColor = message.backgroundColor
        
        } else {
            lbMessage.text = "No message available"
        }
        
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ResultViewController
        vc.message = message // Passando a propriedade 'message' para a próxima view controller
        vc.userWhiteBorder = swWhiteBorder.isOn
    }
    
    @IBAction func changerBorder(_ sender: Any) {
        
        viBorder.backgroundColor = (sender as AnyObject).isOn ? .white : .clear
    }
}

extension ScreenColorViewController: ColorPickerDelegate{
    func applyColor(color: UIColor){
        view.backgroundColor  = color
        message.screenColor = color
    }
}
