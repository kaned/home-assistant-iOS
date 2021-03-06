//
//  CLLocation+ToDoubleArray.swift
//  HomeAssistant
//
//  Created by Robert Trencheny on 6/13/18.
//  Copyright © 2018 Robbie Trencheny. All rights reserved.
//

import Foundation
import CoreLocation

extension CLLocationCoordinate2D {
    func toArray() -> [Double] {
        return [self.latitude, self.longitude]
    }
}

extension CLVisit {
    func location() -> CLLocation {
        return CLLocation(coordinate: self.coordinate, altitude: -1, horizontalAccuracy: self.horizontalAccuracy,
                          verticalAccuracy: -1, timestamp: self.departureDate)
    }
}
