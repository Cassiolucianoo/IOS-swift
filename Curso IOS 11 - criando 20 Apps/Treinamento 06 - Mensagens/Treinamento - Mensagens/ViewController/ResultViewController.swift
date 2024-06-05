//
//  ResultViewController.swift
//  Treinamento - Mensagens
//
//  Created by cassio on 02/06/24.
//

import UIKit

class ResultViewController: BaseViewController{

    @IBOutlet weak var viBorder: UIView!
    var userWhiteBorder: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
        
        if let message = self.message {
            lbMessage.text = message.text
            lbMessage.textColor = message.textColor
            lbMessage.backgroundColor = message.backgroundColor
            view.backgroundColor = message.screenColor
            viBorder.backgroundColor = userWhiteBorder ? .white : .clear
        } else {
            lbMessage.text = "No message available"
        }
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}

extension ResultViewController: ColorPickerDelegate{
    func applyColor(color: UIColor){
        view.backgroundColor  = color
        message.screenColor = color
    }
}
