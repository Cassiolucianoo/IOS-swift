//
//  ViewController.swift
//  Treinamento1.08 - NavigationController
//
//  Created by cassio luciano on 27/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func vai(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    
}	

