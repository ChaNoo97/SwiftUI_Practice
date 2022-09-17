//
//  LandmarkList.swift
//  SwiftUIPractice
//
//  Created by Hoo's MacBookPro on 2022/09/18.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
		
		NavigationView {
			List(landmarks) { landmark in
				NavigationLink {
					LandmarkDetails(landmark: landmark)
				} label: {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationTitle("Landmarks")
		}
		
		
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
		ForEach(["iPhone SE (2nd generation)", "iPhone XS Max", "iPhone 12 Pro Max"], id: \.self) { deviceName in
			LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
				.previewDisplayName(deviceName)
			
		}
    }
}
