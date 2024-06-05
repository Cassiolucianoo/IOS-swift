//
//  ViewController.swift
//  Treinamento - Mensagens
//
//  Created by cassio on 02/06/24.
//
import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        message = Message() // Aqui estamos inicializando a propriedade 'message'
        textField.delegate = self  // Define o delegate do textField
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message // Passando a propriedade 'message' para a próxima view controller
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text // Atualiza a propriedade message com o texto do UITextField
        lbMessage.text = textField.text // Atualiza a label lbMessage (se necessário)
        textField.resignFirstResponder()
        return true
    }
}

extension ViewController: ColorPickerDelegate{
    func applyColor(color: UIColor){
        lbMessage.textColor  = color
        message.textColor = color
    }
}

