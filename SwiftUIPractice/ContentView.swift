//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Hoo's MacBookPro on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack{
			
			MapView()
				.ignoresSafeArea(edges: .top)
				.frame(height: 300)
			
			CircleImage()
				.offset(y: -130)
				.padding(.bottom, -130)
			
			
			
			VStack(alignment: .leading) {
				Text("Turtle Rock")
					.font(.title)
					.foregroundColor(.orange)
					.padding(.bottom, 10)
				HStack{
					Text("Joshua Tree National Park")
						.font(.subheadline)
						.padding(.bottom, 20)
					Spacer()
					Text("California")
						.font(.subheadline)
						.padding(.bottom, 20)
				}
				.font(.subheadline)
				.foregroundColor(.secondary)
				
				Divider()
				
				Text("About Turtle Rock")
					.font(.title2)
				Text("Descriptive text goes here.")
			}
			.padding()
			
			Spacer()
		}
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
