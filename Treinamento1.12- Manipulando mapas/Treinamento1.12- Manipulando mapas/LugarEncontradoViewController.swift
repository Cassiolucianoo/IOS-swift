//
//  LugarEncontradoViewController.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 22/02/22.
//

import UIKit
import MapKit

class LugarEncontradoViewController: UIViewController {

    @IBOutlet weak var tfBusca: UITextField!
    @IBOutlet weak var mapaView: MKMapView!

    @IBOutlet weak var carregandoActivityIndicatorView: UIActivityIndicatorView!
    @IBOutlet weak var carregandoView: UIView!
    
    @IBAction func buscarCidade(_ sender: Any) {
        
    }
    
    @IBAction func fecharMapa(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }


}
