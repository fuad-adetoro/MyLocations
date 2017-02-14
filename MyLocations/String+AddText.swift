//
//  String+AddText.swift
//  MyLocations
//
//  Created by Frederico on 12/02/2017.
//  Copyright © 2017 Fuad Adetoro. All rights reserved.
//

import UIKit

extension String {
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text {
            if !text.isEmpty {
                self += separator
            }
            
            self += text
        }
    }
}
