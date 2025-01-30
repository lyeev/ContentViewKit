import SwiftUI

public struct ContentSection<Content: View>: View {
    let title: String
    let content: Content
    public init(_ title: String, @ViewBuilder _ content: () -> Content) {
        self.title = title
        self.content = content()
    }
    
    public var body: some View {
        Section(title) {
            HStack() {
                Spacer()
                content
                Spacer()
            }
        }
        .padding()
    }
}
