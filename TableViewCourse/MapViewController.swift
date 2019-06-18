//
//  MapViewController.swift
//  TableViewCourse
//
//  Created by Оля on 18/06/2019.
//  Copyright © 2019 Оля. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var place: Place! 
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupPlacemark()
    }
    

    @IBAction func closeVC() {
        
        dismiss(animated: true)
    }
    
    private func setupPlacemark() {
        
        guard let location = place.location else { return }
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(location) { (placemarks, error) in
            if let error = error {
                print(error)
                return
            }
            guard let placemarks = placemarks else { return }
            let placemark = placemarks.first
            
            let annotaion = MKPointAnnotation() // для описания точки на карте
            annotaion.title = self.place.name
            annotaion.subtitle = self.place.type
            guard let placemarkLocation = placemark?.location else { return}
            
            annotaion.coordinate = placemarkLocation.coordinate
            
            self.mapView.showAnnotations([annotaion], animated: true)
            self.mapView.selectAnnotation(annotaion, animated: true)
            
            
            
        }
    }

}
