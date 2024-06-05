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
        if let refence = self as? ColorPickerDelegate{
            if let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as? ColorPickerViewController {
                colorPicker.modalPresentationStyle = .overCurrentContext
                colorPicker.Delegate = refence
                present(colorPicker, animated: true, completion: nil)
            } else {
                print("ColorPickerViewController could not be instantiated")
            }
        }
    }
}
