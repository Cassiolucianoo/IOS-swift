//
//  PlaceAnnotation.swift
//  Treinamento1.12- Manipulando mapas
//
//  Created by cassio luciano on 02/08/22.
//

import Foundation
import MapKit

class placeAnnotation: NSObject, MKAnnotation{

    enum PlaceType {
        case place
        case poi
    }
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var type: PlaceType
    var address: String?
    
    init(coodinate: CLLocationCoordinate2D, Type: PlaceType) {
        self.coordinate = coodinate
        self.type = Type
    }
    
}
