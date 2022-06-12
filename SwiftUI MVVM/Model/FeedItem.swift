//
//  FeedItem.swift
//  SwiftUI MVVM
//

import Foundation

struct FeedItem: Hashable, Codable, Identifiable {
	var id: Int
	var name: String
	var text: String
	var imageName: String
}
