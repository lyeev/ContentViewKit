import SwiftUI

public struct FixedSizeFrame<Content: View>: View {
    let size: CGSize
    let content: Content
    public init(_ size: CGSize = CGSize(width: 100, height: 100), @ViewBuilder _ content: () -> Content) {
        self.size = size
        self.content = content()
    }
    
    public var body: some View {
        Color.clear
            .frame(width: size.width, height: size.height)
            .overlay {
                content
            }
    }
}
