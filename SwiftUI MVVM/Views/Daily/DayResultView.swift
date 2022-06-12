//
//  DayResultView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct DayResultView: View {

	var title: String
	var unit: String
	var value: Int
	var max: Int

    var body: some View {
		GeometryReader { geometry in
			ZStack {
				// Background
				RoundedRectangle(cornerRadius: 10, style: .continuous)
					.fill(Color.white)
					.shadow(radius: 5)
					.padding(5)

				VStack(alignment: .leading) {

					Text(title)
						.font(.title3)
						.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
						.bold()
						.padding(.top, 30)

					Spacer()

					ZStack(alignment: .leading) {
						let capsuleW = geometry.size.width - 40
						let capsuleH: CGFloat = 30

						Capsule()
							.fill(Color(red: 179.0/255.0, green: 225.0/255.0, blue: 219.0/255.0))
							.frame(width: capsuleW, height: capsuleH)
						Capsule()
							.fill(Color(red: 41.0/255.0, green: 222.0/255.0, blue: 202.0/255.0))
							.frame(width: capsuleW * ((CGFloat(value) / CGFloat(max))), height: capsuleH)
					}
					.padding(.bottom, 20)

					Spacer()

					HStack {
						Text(String.init(format: "%d", value))
							.font(.title3)
							.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
							.bold()
						Text(unit)
							.font(.title3)
							.foregroundColor(Color(red: 110.0/255.0, green: 110.0/255.0, blue: 110.0/255.0))
							.bold()
						Spacer()
					}
					.padding(.bottom, 20)
				}
				.padding(.leading, 20)
				.padding(.trailing, 20)
			}
		}
    }
}

struct DayResultView_Previews: PreviewProvider {
    static var previews: some View {
		DayResultView(title: "CALORIES", unit: "kcal", value: 150, max: 250)
			.previewLayout(.fixed(width: 250, height: 200))
	}
}
