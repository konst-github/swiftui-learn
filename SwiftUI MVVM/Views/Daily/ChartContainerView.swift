//
//  ChartContainerView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct ChartContainerView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Text("DAILY ACTIVITY CHART")
				.font(.title2)
				.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
				.bold()

			ChartView()
				.frame(height: 220)
		}
    }
}

struct ChartContainerView_Previews: PreviewProvider {
    static var previews: some View {
		ChartContainerView()
    }
}
