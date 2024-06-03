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
        lbMessage.text = message.text ?? "No message available"
    }

    override func changeColor(_ sender: UIButton) {
        if let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as? ColorPickerViewController {
            present(colorPicker, animated: true, completion: nil)
        } else {
            print("ColorPickerViewController could not be instantiated")
        }
    }
}
