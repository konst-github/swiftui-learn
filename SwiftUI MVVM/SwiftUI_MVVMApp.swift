//
//  SwiftUI_MVVMApp.swift
//  SwiftUI MVVM
//

import SwiftUI

@main
struct SwiftUI_MVVMApp: App {

	typealias Array3D = Array<Array<Array<CGPoint>>>
	let array3D: Array3D = []

	@StateObject var tabsRouter = TabsRouter()

	@StateObject private var dataModel = DataModel()

    var body: some Scene {
        WindowGroup {
			MainContainerView(tabsRouter: tabsRouter)
				.environmentObject(dataModel)
        }
    }
}
