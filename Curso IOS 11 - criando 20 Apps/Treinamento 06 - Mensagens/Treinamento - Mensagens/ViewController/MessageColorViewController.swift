//
//  MessageColorViewController.swift
//  Treinamento - Mensagens
//
//  Created by cassio on 02/06/24.
//

import UIKit

class MessageColorViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        if let message = self.message {
            lbMessage.text = message.text
            lbMessage.textColor = message.textColor
            lbMessage.backgroundColor = message.backgroundColor
        } else {
            lbMessage.text = "No message available"
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc.message = message // Passando a propriedade 'message' para a próxima view controller
    }
    
   
}

extension MessageColorViewController: ColorPickerDelegate{
    func applyColor(color: UIColor){
        lbMessage.backgroundColor  = color
        message.backgroundColor = color
    }
}

