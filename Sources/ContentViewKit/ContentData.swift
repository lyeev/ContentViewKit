//
//  Data.swift
//  
//
//  Created by lyeev on 1/30/25.
//

import SwiftUI

public struct ContentItem: Identifiable {
    public let id = UUID()
    
    let title: String
    let description: String
    let symbol: String
    let content: () -> AnyView
    
    public init(title: String, description: String, symbol: String, content: @escaping () -> AnyView) {
        self.title = title
        self.description = description
        self.symbol = symbol
        self.content = content
    }
}

public struct DefaultView: View {
    public var body: some View {
        Text("Select a menu")
    }
}
