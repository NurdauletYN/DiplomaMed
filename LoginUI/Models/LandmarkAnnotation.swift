//
//  LandmarkAnnotation.swift
//  LoginUI
//
//  Created by macbook air on 10/24/21.
//  Copyright © 2021 Ian Solomein. All rights reserved.
//
import MapKit
import UIKit


final class LandmarkAnnotation: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D

    init(landmark: Landmark) {
        self.title = landmark.name
        self.coordinate = landmark.coordinate
    }
}
