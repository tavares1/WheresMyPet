//
//  MenuItemView.swift
//  WheresMyPet
//
//  Created by Lucas Tavares on 19/10/19.
//  Copyright © 2019 Lucas Tavares. All rights reserved.
//

import SwiftUI

struct MenuItemView: View {
	
	var itemContent: String
	@State var selected: Bool = false
	
    var body: some View {
		VStack {
			Button(action: {
				self.tapButton()
			}){
				if selected {
					Rectangle().cornerRadius(8).foregroundColor(Color(red: 68/255, green: 96/255, blue: 97/255))
				}
				else {
					Rectangle().cornerRadius(8).foregroundColor(Color.white)
				}
			}
			.frame(width: CGFloat(50), height: CGFloat(50.0), alignment: .center)
			.padding(EdgeInsets(top: CGFloat(4), leading: CGFloat(8), bottom: CGFloat(4), trailing: CGFloat(8)))
			.shadow(color: Color.init(white: 0.7), radius: 2, x: 2, y: 2)
			Text(itemContent).font(.footnote)
		}
    }
	
	func tapButton() {
		selected.toggle()
	}
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
		MenuItemView(itemContent: AnimalCategory.Cat.rawValue)
    }
}
