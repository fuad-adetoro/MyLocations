//
//  Functions.swift
//  MyLocations
//
//  Created by Frederico on 07/02/2017.
//  Copyright © 2017 Fuad Adetoro. All rights reserved.
//

import Foundation
import Dispatch

func afterDelay(_ seconds: Double, closure: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: closure)
}