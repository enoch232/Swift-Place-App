//
//  NewViewController.swift
//  PlaceApp
//
//  Created by Enoch Ko on 3/15/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var placeNameField: UITextField!

    @IBOutlet weak var placeDetailField: UITextField!
    var placeList = PlaceList()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func savePlace(_ sender: UIButton) {
        let newPlace = Place(name: placeNameField.text!, detail: placeDetailField.text!, image: "none")
        placeList.add(place: newPlace)
    }

}
