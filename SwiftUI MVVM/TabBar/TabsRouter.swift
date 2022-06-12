//
//  TabsRouter.swift
//  SwiftUI MVVM
//

import SwiftUI


class TabsRouter: ObservableObject {

	@Published var selectedTab: Tab = .daily

}


enum Tab {
	case daily
	case stats
	case add
	case hints
	case profile
}
