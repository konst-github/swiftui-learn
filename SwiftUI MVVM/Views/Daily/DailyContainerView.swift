//
//  DailyContainerView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct DailyContainerView: View {

	@EnvironmentObject var dataModel: DataModel

    var body: some View {

		ScrollView() {
			HStack() {
				Text("Timeline")
					.font(.largeTitle)
					.foregroundColor(Color(red: 97.0/255.0, green: 99.0/255.0, blue: 100.0/255.0))
					.bold()
				Text("June, 28th")
					.font(.title2)
					.foregroundColor(Color(red: 119.0/255.0, green: 121.0/255.0, blue: 122.0/255.0))
				Spacer()
			}

			FeedRowView(items: dataModel.feed)
				.frame(height: 165)
				.padding(.top, 25)

			ChartContainerView()
				.frame(height: 265)
				.padding(.top, 25)

			TodaysTestContainerView()
				.frame(height: 165)
				.padding(.top, 25)

			DayResultsContainerView()
				.frame(height: 220)
				.padding(.top, 25)

			Spacer()
		}
		.padding(.leading, 10)
		.padding(.trailing, 10)
		Spacer()
    }
}

struct DailyContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DailyContainerView()
			.environmentObject(DataModel())
    }
}
