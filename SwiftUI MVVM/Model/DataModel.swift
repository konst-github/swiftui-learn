//
//  DataModel.swift
//  SwiftUI MVVM
//

import Foundation

final class DataModel: ObservableObject {
	@Published var feed: [FeedItem] = load("feed.json")
}

fileprivate func load<T: Decodable>(_ filename: String) -> T {

	let data: Data
	do {
		data = try Data(contentsOf: Bundle.main.bundleURL.appendingPathComponent("feed.json"))
	} catch {
		fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
	}

	do {
		let decoder = JSONDecoder()
		return try decoder.decode(T.self, from: data)
	} catch {
		fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
	}
}

