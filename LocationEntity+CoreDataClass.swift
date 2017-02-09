//
//  LocationEntity+CoreDataClass.swift
//  MyLocations
//
//  Created by Frederico on 08/02/2017.
//  Copyright © 2017 Fuad Adetoro. All rights reserved.
//

import Foundation
import CoreData
import MapKit


public class LocationEntity: NSManagedObject, MKAnnotation {
    public var coordinate: CLLocationCoordinate2D {
        return CLLocationCoordinate2DMake(latitude, longitude)
    }
    
    public var title: String? {
        if locationDescription.isEmpty {
            return "(No Description)"
        } else {
            return locationDescription
        }
    }
    
    public var subtitle: String? {
        return category
    }
}
