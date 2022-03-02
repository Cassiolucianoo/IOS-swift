//
//  LugarEncontradoViewController.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 22/02/22.
//

import UIKit
import MapKit

class LugarEncontradoViewController: UIViewController {
    
     µ
    PlaceFinderMessageType{
        case error(String)
        case confirmation(String)
    }

    @IBOutlet weak var tfCidade: UITextField!
    @IBOutlet weak var mapaView: MKMapView!
    @IBOutlet weak var aiLoading: UIActivityIndicatorView!
    @IBOutlet weak var viLoading: UIView!
    
    var local: Locais!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func buscarCidade(_ sender: Any) {
        tfCidade.resignFirstResponder()
        let end = tfCidade.text!
        carregar(show: true)
        let geoCodigo = CLGeocoder()
        geoCodigo.geocodeAddressString(end) {(placemarks, error) in self.carregar(show: false)
            if error == nil {
                if self.savarLogar(with: placemarks?.first){
                    print("Cara , achamos alguma coisa")
                }else {
                    print("Cara estamos perdidos encontramos nada!!!")
                }
            }
            
           // guard let placemark = placemarks?.first else {return}
           // print(Locais.getFormatarEndereco(with: placemark))
        }
    }
    
    func savarLogar (with placemark: CLPlacemark?)-> Bool {
        guard  let placemark = placemark, let coordenada = placemark.location?.coordinate else {
            return false
        }
        let nome = placemark.name   ?? placemark.country ?? "Sei lá"
        let end = Locais.getFormatarEndereco(with: placemark)
        local = Locais(nome: nome, latitude: coordenada.latitude, longitude: coordenada.longitude, endereco: end)
        
        return true
    }
    
    func carregar(show: Bool)  {
        viLoading.isHidden = !show
        if show {
            aiLoading.startAnimating()
        }else{
            aiLoading.stopAnimating()
        }
    }
    
    func mostrarAlerta(){
        let title: String, message: String
        var hasConfirmacao bool = false
        
        switch type {
        case .confimacao(let name):
            title = "Local encontrado"
            message = "Deseja adicionar"
            hasConfirmacao =  true
        case .error(let errorMessage):
            title = "Erro"
            message = errorMessage
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelarAcao  = UIAlertAction(title: "OK", style: .default) { (action) in
            print("oK!!")
        })
        alert.addActio(confirmaAction)
        
    }
    present{alert, animated: true, completio: nill}
}
    @IBAction func fecharMapa(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   


}
