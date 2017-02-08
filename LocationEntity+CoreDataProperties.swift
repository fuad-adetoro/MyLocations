//
//  LocationEntity+CoreDataProperties.swift
//  MyLocations
//
//  Created by Frederico on 08/02/2017.
//  Copyright © 2017 Fuad Adetoro. All rights reserved.
//

import Foundation
import CoreData
import CoreLocation

extension LocationEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<LocationEntity> {
        return NSFetchRequest<LocationEntity>(entityName: "LocationEntity");
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var locationDescription: String
    @NSManaged public var date: Date
    @NSManaged public var category: String
    @NSManaged public var placemark: CLPlacemark?

}
