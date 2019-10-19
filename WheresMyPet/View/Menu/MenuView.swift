
//
//  MenuView.swift
//  WheresMyPet
//
//  Created by Lucas Tavares on 19/10/19.
//  Copyright © 2019 Lucas Tavares. All rights reserved.
//

import SwiftUI

enum AnimalCategory: String {
	case Dog
	case Cat
	case Bird
	case Snake
	case Exotic
}

struct MenuView: View {
	var categories:[AnimalCategory] = [.Dog,.Cat ,.Bird ,.Exotic, .Snake]
	var body: some View {
		ScrollView(.horizontal, showsIndicators: false) {
			HStack {
				ForEach(0..<categories.count) { index in
					MenuItemView(itemContent: self.categories[index].rawValue)
				}
			}
		}
    }
}

struct MenuVIew_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
