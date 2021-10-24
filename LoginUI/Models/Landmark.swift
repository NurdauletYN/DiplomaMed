//
//  Landmark.swift
//  LoginUI
//
//  Created by macbook air on 10/24/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//
import Foundation
import MapKit

struct Landmark {
    
    let placemark: MKPlacemark
    
    var id: UUID {
        return UUID()
    }
    
    var name: String {
        self.placemark.name ?? ""
    }
    
    var title: String {
        self.placemark.title ?? ""
    }
    
    var coordinate: CLLocationCoordinate2D {
        self.placemark.coordinate
    }
}
