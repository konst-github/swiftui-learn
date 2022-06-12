//
//  MainContainerView.swift
//  SwiftUI MVVM
//

import SwiftUI

extension Optional {
	func ifNil<Wrapped>(value: Wrapped) -> Wrapped {
		if self != nil {
			return self as! Wrapped
		}
		return value
	}
}

class someclass {
	init() {
		let value1: Optional<Int> = nil
		let returnValue1: Int = value1.ifNil(value: 5)
		print(returnValue1)
		let value2: String? = nil
		let returnValue2: String = value2.ifNil(value: "John Doe")
		print(returnValue2)
		let value3: Date? = nil
		let returnValue3: Date = value3.ifNil(value: Date())
		print(returnValue3)
	}
}

struct MainContainerView: View {

	@StateObject var tabsRouter: TabsRouter

    var body: some View {

		let some = someclass()

		VStack {
			Spacer()
			VStack() {
				switch tabsRouter.selectedTab {
					case .daily:
						DailyContainerView()
					case .stats:
						StatsContainerView()
					case .hints:
						HintsContainerView()
					case .profile:
						ProfileContainerView()
					default:
						Spacer()
				}
			}
			.background(Color.white)

			Spacer()

			HStack(alignment: .bottom) {
				TabsContainerView(tabsRouter: tabsRouter)
			}
			.frame(height: 100.0)
			.padding(.bottom, 0)
		}
		.background(Color.white.edgesIgnoringSafeArea(.top))
		.edgesIgnoringSafeArea(.bottom)
	}
}

struct MainContainerView_Previews: PreviewProvider {
    static var previews: some View {
		MainContainerView(tabsRouter: TabsRouter())
			.environmentObject(DataModel())
	}
}
