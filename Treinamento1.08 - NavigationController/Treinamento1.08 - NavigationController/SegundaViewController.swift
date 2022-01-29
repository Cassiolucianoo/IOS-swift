//
//  SegundaViewController.swift
//  Treinamento1.08 - NavigationController
//
//  Created by cassio luciano on 28/01/22.
//

import Foundation

import UIKit

class SegundaViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func volta(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
  
   

}

