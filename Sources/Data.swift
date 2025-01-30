//
//  Data.swift
//  
//
//  Created by lyeev on 1/30/25.
//

public struct ContentItem: Identifiable {
    public let id = UUID()
    
    public let title: String
    public let description: String
    public let symbol: String
    public let content: () -> AnyView
}

public struct DefaultView: View {
    public var body: some View {
        Text("Select a menu")
    }
}
