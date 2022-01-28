//
//  ViewController.swift
//  Treinamento1.07 - ViewsOutletsActions
//
//  Created by cassio luciano on 19/01/22.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    var nome: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // buttons[10]
    }

    @IBAction func runSomething(_ sender: UIButton) {
        print("runSomething")
    }
    
    @IBAction func doSomething(_ sender: Any, forEvent event: UIEvent) {
        
        print("doSomething")
    }
    
    @IBAction func change(_ sender: Any) {
        print("change")
    }
    
    
    
}

