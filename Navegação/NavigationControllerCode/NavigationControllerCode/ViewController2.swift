//
//  ViewController2.swift
//  NavigationControllerCode
//
//  Created by cassio luciano on 25/07/22.
//

import UIKit

class ViewController2: UIViewController {

    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemRed
        title = "Bem vindo a tela vermelha"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            title: "Tchau", style: .plain, target: self, action: #selector(dismisseSelf))
        
        button.setTitle("Navegar em outra view", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .blue
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x:100, y:100, width:200, height:52)
        button.addTarget(self, action: #selector(apertarBotao), for: .touchUpInside)
        
    }
    
    @objc private func apertarBotao(){
     let rootVC = ViewController()
        rootVC.view.backgroundColor = .white
        navigationController?.pushViewController(rootVC, animated: true)
     
    }
    @objc private func dismisseSelf(){
        dismiss(animated: true, completion: nil)
        }
    }

