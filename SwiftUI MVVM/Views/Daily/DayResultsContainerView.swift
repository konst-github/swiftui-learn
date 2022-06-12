//
//  DayResultsContainerView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct DayResultsContainerView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Text("DAY RESULTS")
				.font(.title2)
				.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
				.bold()
			Spacer()
			HStack {
				DayResultView(title: "CALORIES", unit: "kcal", value: 150, max: 300)
				Spacer()
				DayResultView(title: "DISTANCE", unit: "km", value: 15, max: 50)
			}
		}
    }
}

struct DayResultsContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DayResultsContainerView()
    }
}
