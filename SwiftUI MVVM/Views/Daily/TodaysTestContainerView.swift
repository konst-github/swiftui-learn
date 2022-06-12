//
//  TodaysTestContainerView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct TodaysTestContainerView: View {
    var body: some View {
		VStack(alignment: .leading) {
			Text("TODAY'S TEST QUIZ")
				.font(.title2)
				.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
				.bold()

			ZStack {
				RoundedRectangle(cornerRadius: 25, style: .continuous)
					.fill(LinearGradient(gradient:
							Gradient(colors:
										[Color(red:210.0/255.0, green: 210/255.0, blue: 210/255.0),
										 Color.white
										]),
										 startPoint: UnitPoint(x: 1, y: 0),
										 endPoint: UnitPoint(x: 1, y: 1)))
					.padding(.leading, 5)
					.padding(.trailing, 5)

				HStack {
					VStack(alignment: .leading) {
						Text("CHECK YOURSELF")
							.foregroundColor(Color(red: 45.0/255.0, green: 60.0/255.0, blue: 89.0/255.0))
							.font(.headline)
							.textCase(.uppercase)
							.padding(.top, 20)
						Text("Take yous sills test. There are 20 questions to answer.")
							.foregroundColor(Color(red: 45.0/255.0, green: 60.0/255.0, blue: 89.0/255.0))
							.font(.subheadline)
							.lineLimit(nil)
							.padding(.top, 5)
						Spacer()
					}
					.padding(.leading, 15)
					.padding(.trailing, 15)
					Spacer()
					ArrowButton()
						.frame(width: 70, height: 70)
						.padding(.trailing, 20)
				}
			}
		}
	}
}

struct TodaysTestContainerView_Previews: PreviewProvider {
    static var previews: some View {
        TodaysTestContainerView()
			.previewLayout(.fixed(width: 500, height: 165))
    }
}
