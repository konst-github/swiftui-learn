//
//  ChartView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct ChartView: View {
    var body: some View {
		GeometryReader { geometry in
			Path { path in
				var x: CGFloat = 10
				let y: CGFloat = geometry.size.height - 10
				let height: CGFloat = geometry.size.height - 20

				let step: CGFloat = floor((geometry.size.width - 20)/9)

				path.move(to: CGPoint(x: x, y: y))
				path.addLine(to: CGPoint(x: x + geometry.size.width - 20,
										 y: y))

				for _ in 0 ..< 10 {
					path.move(to: CGPoint(x: x, y: y))
					path.addLine(to: CGPoint(x: x, y: y - height))
					x += step
				}
			}
			.stroke(Color(red:210.0/255.0, green: 210/255.0, blue: 210/255.0),
					style: StrokeStyle(lineWidth: 2, lineCap: .round))
		}
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
		ChartView()
    }
}
