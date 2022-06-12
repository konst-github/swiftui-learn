//
//  TabButton.swift
//  SwiftUI MVVM
//

import SwiftUI

struct TabButton: View {

	var iconName: String
	var title: String
	var color: Color

    var body: some View {

		VStack {
			Image(systemName: iconName)
				.resizable()
				.scaledToFit()
				.foregroundColor(color)
				.padding(10)
			HStack {
				Spacer()
				Text(title)
					.foregroundColor(color)
					.font(.system(size: 16.0))
					.padding(.bottom, 10)
				Spacer()
			}
		}
	}
}

struct TabButton_Previews: PreviewProvider {
    static var previews: some View {
		TabButton(iconName: "house", title: "Title Title", color: .red)
    }
}
