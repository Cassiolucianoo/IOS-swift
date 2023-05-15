//
//  ViewController.swift
//  Present
//
//  Created by cassio luciano on 27/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let vc = ViewControllerVermelha() //change this to your class name
        
    @IBAction func TelaVermelha(_ sender: Any) {
        present(vc, animated: true, completion: nil)
    }
    

}

