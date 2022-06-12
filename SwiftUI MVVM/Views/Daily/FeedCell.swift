//
//  FeedCell.swift
//  SwiftUI MVVM
//

import SwiftUI

struct FeedCell: View {

	var item: FeedItem

    var body: some View {

		ZStack() {

			RoundedRectangle(cornerRadius: 25, style: .continuous)
				.fill(LinearGradient(gradient:
						Gradient(colors:
									[Color(red:217/255.0, green: 251/255.0, blue:245/255.0),
									 Color(red:224/255.0, green: 246/255.0, blue:242/255.0)
									]),
									 startPoint: UnitPoint(x: 1, y: 0),
									 endPoint: UnitPoint(x: 1, y: 1)))
				.padding(.trailing, 5)


			VStack(alignment: .leading) {
				HStack {
					Image(systemName: item.imageName)
						.resizable()
						.scaledToFit()
						.frame(height: 15)
						.foregroundColor(Color(red: 45.0/255.0, green: 60.0/255.0, blue: 169.0/255.0))
					Text(item.name)
						.foregroundColor(Color(red: 45.0/255.0, green: 60.0/255.0, blue: 169.0/255.0))
						.font(.headline)
						.textCase(.uppercase)
				}
				.padding(.top, 14)
				Text(item.text)
					.foregroundColor(.primary)
					.font(.subheadline)
					.lineLimit(nil)
				Spacer()
			}
			.padding(.leading, 20)
			.padding(.trailing, 20)
		}
		.frame(width: 250)
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
		FeedCell(item: DataModel().feed[0])
    }
}
