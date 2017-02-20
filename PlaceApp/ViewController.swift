//
//  ViewController.swift
//  PlaceApp
//
//  Created by Enoch Ko on 2/19/17.
//  Copyright © 2017 asu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tablelist: UITableView!
    var placeList = PlaceList()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeList.count()
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = placeList.get(index: indexPath.row).name
        return(cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let selectedIndex: IndexPath = self.tablelist.indexPath(for: sender as! UITableViewCell)!
        let detailController = segue.destination as! DetailController
        detailController.selectedIndex = selectedIndex.row
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "detail", sender: placeList.get(index: indexPath.row))
    }


}

