//
//  DetailController.swift
//  PlaceApp
//
//  Created by Enoch Ko on 2/19/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
