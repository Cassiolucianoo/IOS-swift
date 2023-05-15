//
//  ViewController.swift
//  NavigationControllerCode
//
//  Created by cassio luciano on 25/07/22.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()
    
    
    override func viewDidLoad() {
        title = "Bem vindo a tela Azul"
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        button.setTitle("Navegar em outra view", for: .normal)
        view.addSubview(button)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x:100, y:100, width:200, height:52)
        button.addTarget(self, action: #selector(apertarBotao), for: .touchUpInside)
        
    }
    
    @objc private func apertarBotao(){
     let rootVC = ViewController2()
     let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
     present(navVC, animated: true)
        
    }

}

