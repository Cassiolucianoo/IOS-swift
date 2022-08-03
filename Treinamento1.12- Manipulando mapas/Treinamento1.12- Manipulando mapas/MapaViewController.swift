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
    @IBOutlet weak var viInfo: UIView!
    
    var places: [Place]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarPesquisa.isHidden = true
        viInfo.isHidden = true
        mpView.delegate = self
        
        if places.count == 1 {
            title = places[0].nome
        } else {
            title = " Meus lugares"
        }
        
        for place in places {
            addToMap(place)
        }
         showPlaces()
    }
    
    func addToMap(_ place : Place){
        let annotation = placeAnnotation(coodinate: place.coordenada, Type: .place)
        annotation.coordinate = place.coordenada
        annotation.title = place.nome
        mpView.addAnnotation(annotation)
        
    }
    
    func showPlaces(){
        mpView.showAnnotations(mpView.annotations, animated: true)
    }
    
    @IBAction func direcionarrota(_ sender: Any) {
    }
    
    @IBAction func mostrarPesquisa(_ sender: Any) {
    }
    
}

extension MapaViewController:MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation)-> MKAnnotationView? {
        if !(annotation is placeAnnotation){
            return nil
        }
        let type = (annotation as! placeAnnotation).type
        let identifier = "\(type)"
        var annotationView = mpView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
        if annotation == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
        }
        annotationView?.annotation = annotation
        annotationView?.canShowCallout = true
        annotationView?.markerTintColor = type == .place ? UIColor(named: "main") : UIColor(named: "poi")
        annotationView?.glyphImage = type == .place ? UIImage(named: "placeGlyph") : UIImage(named: "poiGlyph")
        return annotationView
    }
}
