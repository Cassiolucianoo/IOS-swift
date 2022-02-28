//
//  Locais.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 27/02/22.
//

import Foundation
import MapKit

struct Locais {
    let nome: String
    let latitude: CLLocationDegrees
    let longitude: CLLocationDegrees
    let endereco: String
    
    var coordenada : CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    static func getFormatarEndereco(with placemark: CLPlacemark) -> String{
          var end = ""
            if let rua = placemark.thoroughfare{
                end += rua  //rua
            }
        if let numero = placemark.subThoroughfare{
            end += "\( numero )"   // numero
        }
        
        if let subLocalizacao = placemark.subLocality{
            end += ", \( subLocalizacao)"  //bairro
        }
        
        if let cidade = placemark.locality{
            end += "\n \( cidade)"  //cidade
        }
        if let estado = placemark.administrativeArea{
            end += "\( estado )"  //estado
        }
        if let cep = placemark.postalCode{
            end += "\nCep: \( cep)"  //estado
        }
        if let pais = placemark.country{
            end += "\( pais )"  //pais
        }
        return end
        }
 
    
    }

