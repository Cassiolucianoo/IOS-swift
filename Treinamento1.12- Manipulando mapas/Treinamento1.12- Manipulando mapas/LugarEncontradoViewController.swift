//
//  LugarEncontradoViewController.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 22/02/22.
//

import UIKit
import MapKit

class LugarEncontradoViewController: UIViewController {
    
    
    enum  PlaceFinderMessageType{
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
    
    
    @IBAction func buscarCidade(_ sender: UIButton) {
        tfCidade.resignFirstResponder()
        let end = tfCidade.text!
        carregar(show: true)
        let geoCodigo = CLGeocoder()
        geoCodigo.geocodeAddressString(end) {(placemarks, error) in self.carregar(show: false)
            if error == nil {
                if !self.savarLogar(with: placemarks?.first){
                    self.mostrarAlerta(type: .error("Não encontramos locais com esse nome"))
                }
                }else {
                    self.mostrarAlerta(type: .error("Que erro desconhecido "))
                }
            }
            
        }
    
    
    func savarLogar (with placemark: CLPlacemark?)-> Bool {
        guard  let placemark = placemark, let coordenada = placemark.location?.coordinate else {
            return false
        }
        let nome = placemark.name   ?? placemark.country ?? "Sei lá"
        let end = Locais.getFormatarEndereco(with: placemark)
        local = Locais(nome: nome, latitude: coordenada.latitude, longitude: coordenada.longitude, endereco: end)
        
       let region = MKCoordinateRegion(center: coordenada, latitudinalMeters: 3000, longitudinalMeters: 3500)
        mapaView.setRegion(region, animated: true)
        
        self.mostrarAlerta (type: .confirmation(local.nome))
        
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
    
    @IBAction func fecharMapa(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    func mostrarAlerta(type: PlaceFinderMessageType){
        let title: String, message: String
        var hasConfirmacao: Bool = false
        
        switch type {
        case .confirmation(let name):
            title = "Local encontrado"
            message = "Deseja adicionar \(name)"
            hasConfirmacao =  true
        case .error(let errorMessage):
            title = "Erro"
            message = errorMessage
        }
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancelarAcao  = UIAlertAction(title: "Cancelar", style: .cancel, handler: nil)
        alert.addAction(cancelarAcao)
        if hasConfirmacao{
            let confirmacao = UIAlertAction(title: "OK", style: .default, handler: { (action) in
                print("Ok")
            })
            
            alert.addAction(confirmacao)
        }
        present(alert, animated: true, completion: nil)
        
    }
}
