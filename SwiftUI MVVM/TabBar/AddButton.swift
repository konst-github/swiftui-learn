//
//  AddButton.swift
//  SwiftUI MVVM
//

import SwiftUI

struct AddButton: View {
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
			}
			.fill(Color.gray)

			Path { path in
				path.move(to: CGPoint(
					x: center.x - halfRadius,
					y: center.y
				))
				path.addLine(to: CGPoint(
					x: center.x + halfRadius,
					y: center.y
				))
				path.move(to: CGPoint(
					x: center.x,
					y: center.y - halfRadius
				))
				path.addLine(to: CGPoint(
					x: center.x,
					y: center.y + halfRadius
				))
			}
			.stroke(Color.white, style: StrokeStyle(lineWidth: halfRadius/5, lineCap: .round))
		}
	}
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton()
    }
}
