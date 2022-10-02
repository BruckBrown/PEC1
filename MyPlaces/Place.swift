//
//  Place.swift
//  MyPlaces
//
//  Created by Pedro on 21/9/22.
//  Copyright © 2022 Pedro Moreno del rio. All rights reserved.
//

import Foundation
import MapKit

enum PlacesTypes
{
    case GenericPlace
    case TouristicPlace
}

class Place {
    var id: String = ""
    var type: PlacesTypes = .GenericPlace
    var name: String = ""
    var description: String = ""
    var location: CLLocationCoordinate2D!
    var image:Data? = nil
    
    
    init( self.id = UUID().uuidString)
    init(name: String,description: String,image_in: Data?, self.id = UUID().uuidString)
    init(type: PlacesTypes,name: String,description: String,image_in: Data?, self.id = UUID().uuidString)
}

class PlaceTourist: Place {
    var discount_tourist: String = ""
    
    override init() {
        super.init()
        type = .TouristicPlace
    }
    init(name:String,description:String,discount_tourist:String,image_in:Data?)

{
super.init(type:.TouristicPlace,name:name,description:description,image_in:image_in)
self.discount_tourist = discount_tourist
}
}

class ManagerPlaces: Place {
    func append( _ value: Place)
    func GetCount()->Int
    func GetItemAt(position: Int) -> Place
    func GetItemById(id: String) -> Place
    func remove(_ value: Place)
}



