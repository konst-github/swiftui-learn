//
//  FeedRowView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct FeedRowView: View {

	var items: [FeedItem]

    var body: some View {
		VStack(alignment: .leading) {
			Text("TODAY'S FEED")
				.font(.title2)
				.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
				.bold()

			ScrollView(.horizontal, showsIndicators: false) {
				HStack(spacing: 0) {
					ForEach(items) { item in
						FeedCell(item: item)
					}
				}
			}
			.frame(height: 100)
		}
    }
}

struct FeedRowView_Previews: PreviewProvider {
    static var previews: some View {
		FeedRowView(items: DataModel().feed)
    }
}
