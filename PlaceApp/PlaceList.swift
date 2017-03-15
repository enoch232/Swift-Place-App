//
//  PlaceList.swift
//  PlaceApp
//
//  Created by Enoch Ko on 2/19/17.
//  Copyright © 2017 asu. All rights reserved.
//

import Foundation
class PlaceList {
    var places:[Place]
    init(){
        places = [Place]()
        let newPlace1 = Place(name: "Las Vegas", detail: "Crazy nightlife", image: "lasvegas.jpg")
        places.append(newPlace1)
        let newPlace2 = Place(name: "Los Angeles", detail: "Center of nation's film and television industry", image: "losangeles.jpg")
        places.append(newPlace2)
        let newPlace3 = Place(name: "Phoenix", detail: "Capital city of Arizona", image: "phoenix.jpg")
        places.append(newPlace3)
        let newPlace4 = Place(name: "New York City", detail: "Most expensive city", image: "newyorkcity.jpg")
        places.append(newPlace4)
        let newPlace5 = Place(name: "Chicago", detail: "City with bold architectures", image: "chicago.jpg")
        places.append(newPlace5)
        
    }
    func count() -> Int {
        return places.count
    }
    
    func get(index: Int) -> Place {
        return places[index]
    }
    
    func add(place: Place){
        places.append(place)
    }
    
    func removeAt(index: Int) {
        places.remove(at: index)
    }
}
