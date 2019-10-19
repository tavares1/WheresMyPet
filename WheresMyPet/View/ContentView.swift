//
//  ContentView.swift
//  WheresMyPet
//
//  Created by Lucas Tavares on 19/10/19.
//  Copyright © 2019 Lucas Tavares. All rights reserved.
//

import SwiftUI

struct ContentView: View {
	let typeOfAnimals = ["Dog", "Cat", "Exotic"]

	
    var body: some View {
		NavigationView {
			ZStack {
				Color.red
				VStack {
					MenuView()
				}
			}
		.navigationBarTitle("Where's my Pet?")
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
