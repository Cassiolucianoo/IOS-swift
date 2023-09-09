//
//  ViewController.swift
//  delegate
//
//  Created by cassio on 08/09/23.
//

import UIKit
import Foundation

protocol DataDelegate: AnyObject {
    func sendData(data: String)
}

class ViewController: UIViewController{
    
    @IBOutlet weak var levaTextoParaTela2: UITextField!
    
    var secondViewController: SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonTapped(_ sender: Any){
        if let text = levaTextoParaTela2.text {
            if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
                secondVC.delegate = self
                secondVC.receivedData = text
                navigationController?.pushViewController(secondVC, animated: true)
            }
        }
    }
}

extension ViewController: DataDelegate {
    func sendData(data: String) {
        // Implemente a lógica aqui para receber os dados na primeira View Controller
        print("Dados recebidos na primeira tela: \(data)")
    }
}
