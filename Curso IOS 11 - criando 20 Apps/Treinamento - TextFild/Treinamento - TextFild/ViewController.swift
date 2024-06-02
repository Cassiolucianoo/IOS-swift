//
//  ViewController.swift
//  Treinamento - TextFild
//
//  Created by cassio on 01/06/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tfName.delegate = self
        tfEmail.delegate = self
        
        
        // Do any additional setup after loading the view.
    }
    
    //fechar teclado ao apertar na view
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

  //Next Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        }else if textField == tfEmail{
            print("Enviando dados para servidor")
           // tfPassword.becomeFirstResponder()
            tfPassword.resignFirstResponder()
        }
    return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return !textField.text!.isEmpty
    }
}



