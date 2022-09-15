//
//  SwiftUIView.swift
//  SwiftUIPractice
//
//  Created by Hoo's MacBookPro on 2022/09/11.
//

import SwiftUI

struct CircleImage: View {
	var body: some View {
		Image("TurtleRock")
			.resizable()
			.frame(width: 200, height: 200)
			.clipShape(Circle())
			.overlay {
				 Circle().stroke(.white, lineWidth: 4)
			}
			.shadow(radius: 7)
			
	}
}

struct SwiftUIView_Previews: PreviewProvider {
	static var previews: some View {
		CircleImage()
	}
}
