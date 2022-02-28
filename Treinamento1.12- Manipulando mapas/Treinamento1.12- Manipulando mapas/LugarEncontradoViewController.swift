//
//  LugarEncontradoViewController.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 22/02/22.
//

import UIKit
import MapKit

class LugarEncontradoViewController: UIViewController {

    @IBOutlet weak var tfCidade: UITextField!
    @IBOutlet weak var mapaView: MKMapView!
    @IBOutlet weak var aiLoading: UIActivityIndicatorView!
    @IBOutlet weak var viLoading: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func buscarCidade(_ sender: Any) {
        tfCidade.resignFirstResponder()
        let end = tfCidade.text!
        carregar(show: true)
        let geoCodigo = CLGeocoder()
        geoCodigo.geocodeAddressString(end) { (placemarks, error) in
            self.viLoading(show: false)
        }
    }
    
    func carregar(show: Bool)  {
        viLoading.isHidden = !show
        if show {
            aiLoading.startAnimating()
        }else{
            aiLoading.stopAnimating()
        }
    }
    
    @IBAction func fecharMapa(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   


}
