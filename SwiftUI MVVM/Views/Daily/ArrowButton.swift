//
//  ArrowButton.swift
//  SwiftUI MVVM
//

import SwiftUI

struct ArrowButton: View {

    var body: some View {

		GeometryReader { geometry in
			let diameter: CGFloat = min(geometry.size.width, geometry.size.height) * 0.85
			let halfRadius = diameter/4
			let center = CGPoint(x: geometry.size.width/2, y: geometry.size.height/2)
			Path { path in
				path.addEllipse(in:
									CGRect(x: center.x - diameter/2,
										   y: center.y - diameter/2,
										   width: diameter,
										   height: diameter))
//			}
//			.stroke(Color.gray)

//			Path { path in
				path.move(to: CGPoint(
					x: center.x - halfRadius/2,
					y: center.y
				))
				path.addLine(to: CGPoint(
					x: center.x + halfRadius/2,
					y: center.y
				))
				path.move(to: CGPoint(
					x: center.x + halfRadius/2,
					y: center.y
				))
				path.addLine(to: CGPoint(
					x: center.x + halfRadius/6,
					y: center.y - halfRadius/2
				))
				path.move(to: CGPoint(
					x: center.x + halfRadius/2,
					y: center.y
				))
				path.addLine(to: CGPoint(
					x: center.x + halfRadius/6,
					y: center.y + halfRadius/2
				))
			}
			.stroke(Color.gray,
					style: StrokeStyle(lineWidth: 2, lineCap: .round))
		}
	}
}

struct ArrowButton_Previews: PreviewProvider {
    static var previews: some View {
		ArrowButton()
    }
}
