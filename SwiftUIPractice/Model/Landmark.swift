//
//  Landmark.swift
//  SwiftUIPractice
//
//  Created by Hoo's MacBookPro on 2022/09/15.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
	var name: String
	var category: String
	var city: String
	var state: String
	var id: Int
	var isFeatured: Bool
	var isFavorite: Bool
	var park: String
	var description: String
	
	private var imageName: String
	var image: Image {
		Image(imageName)
	}
	
	private var coordinates: Coordinates
	
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude
		)
	}
	
	struct Coordinates: Hashable, Codable {
		var latitude: Double
		var longitude: Double
	}
}


