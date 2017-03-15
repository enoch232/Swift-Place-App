//
//  DetailController.swift
//  PlaceApp
//
//  Created by Enoch Ko on 2/19/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit
import MapKit

class DetailController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var placeList = PlaceList()
    var selectedIndex:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameLabel.text = String(placeList.get(index: selectedIndex).name)
        self.detailLabel.text = String(placeList.get(index: selectedIndex).detail)
        self.imageView.image = UIImage(named: String(placeList.get(index: selectedIndex).image))
        // Do any additional setup after loading the view.
        
        let geoCoder = CLGeocoder();
        //let addressString = "699, S. Mill Ave, Tempe, AZ, 85281"
        let addressString = self.nameLabel.text!
        geoCoder.geocodeAddressString(addressString, completionHandler:
            {(placemarks, error) in
                
                if error != nil {
                    print("Geocode failed: \(error!.localizedDescription)")
                } else if placemarks!.count > 0 {
                    let placemark = placemarks![0]
                    let location = placemark.location
                    let coords = location!.coordinate
                    print(location)
                    
                    let span = MKCoordinateSpanMake(0.05, 0.05)
                    let region = MKCoordinateRegion(center: placemark.location!.coordinate, span: span)
                    self.mapView.setRegion(region, animated: true)
                    let ani = MKPointAnnotation()
                    ani.coordinate = placemark.location!.coordinate
                    ani.title = "Brickyard Building"
                    ani.subtitle = "CIDSE ASU"
                    
                    self.mapView.addAnnotation(ani)
                    
                }
        })
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
