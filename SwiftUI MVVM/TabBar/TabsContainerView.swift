//
//  TabsContainerView.swift
//  SwiftUI MVVM
//

import SwiftUI

struct TabsContainerView: View {

	@StateObject var tabsRouter: TabsRouter

	var body: some View {

		let addButtonSize: CGFloat = 70.0

		HStack {
			TabButton(iconName: "house.fill",
					  title: "Daily",
					  color: tabsRouter.selectedTab == .daily ? .blue : .gray)
				.onTapGesture {
					tabsRouter.selectedTab = .daily
				}
			Spacer()
			TabButton(iconName: "chart.bar.xaxis",
					  title: "Stats",
					  color: tabsRouter.selectedTab == .stats ? .orange : .gray)
				.onTapGesture {
					tabsRouter.selectedTab = .stats
				}
			Spacer()

			AddButton()
				.frame(width: addButtonSize, height: addButtonSize)
				.onTapGesture {
					tabsRouter.selectedTab = .add
				}
			Spacer()

			TabButton(iconName: "questionmark",
					  title: "Hints",
					  color: tabsRouter.selectedTab == .hints ? .green : .gray)
				.onTapGesture {
					tabsRouter.selectedTab = .hints
				}
			Spacer()

			TabButton(iconName: "person.crop.circle",
					  title: "Profile",
					  color: tabsRouter.selectedTab == .profile ? .purple : .gray)
				.onTapGesture {
					tabsRouter.selectedTab = .profile
				}
		}
		.background(Color("LightGray"))
		.frame(height: 80.0)
    }
}

struct TabsContainerView_Previews: PreviewProvider {
    static var previews: some View {
		TabsContainerView(tabsRouter: TabsRouter())
    }
}
