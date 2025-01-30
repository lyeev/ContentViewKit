import SwiftUI

public struct CaptionedContent<Content: View>: View {
    let upperCaption: String?
    let caption: String
    let content: Content
    let captionWidth: CGFloat
    public init(upperCaption: String? = nil, caption : String = "", captionWidth: CGFloat = 250, @ViewBuilder _ content: () -> Content) {
        self.upperCaption = upperCaption
        self.caption = caption
        self.content = content()
        self.captionWidth = captionWidth
    }
    
    public var body: some View {
        VStack {
            if let upperCaption = self.upperCaption {
                Text(upperCaption)
            }
            
            content
            
            Text(caption)
        }
        .font(.system(.body, design: .monospaced))
        .frame(maxWidth: captionWidth)
    }
}
