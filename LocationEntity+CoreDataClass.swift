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
    
    public var hasPhoto: Bool {
        return photoID != nil
    }
    
    public var photoURL: URL {
        assert(photoID != nil, "No photo ID set")
        let filename = "Photo-\(photoID!.intValue).jpg"
        return applicationDocumentsDirectory.appendingPathComponent(filename)
    }
    
    public var photoImage: UIImage? {
        return UIImage(contentsOfFile: photoURL.path)
    }
    
    public class func nextPhotoID() -> Int {
        let userDefaults = UserDefaults.standard
        let currentID = userDefaults.integer(forKey: "PhotoID")
        userDefaults.set(currentID + 1, forKey: "PhotoID")
        userDefaults.synchronize()
        return currentID
    }
    
    public func removePhotoFile() {
        if hasPhoto {
            do {
                try FileManager.default.removeItem(at: photoURL)
            } catch {
                print("Error removing file: \(error)")
            }
        }
    }
}
