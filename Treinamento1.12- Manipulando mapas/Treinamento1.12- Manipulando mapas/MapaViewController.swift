//
//  MapaViewController.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 25/02/22.
//

import UIKit
import MapKit

class MapaViewController: UIViewController {

    @IBOutlet weak var mpView: MKMapView!
    @IBOutlet weak var searchBarPesquisa: UISearchBar!
    @IBOutlet weak var lbDescricaoLocal: UILabel!
    @IBOutlet weak var lbNomeLocal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func direcionarrota(_ sender: Any) {
    }
    
    @IBAction func mostrarPesquisa(_ sender: Any) {
    }
    
}
