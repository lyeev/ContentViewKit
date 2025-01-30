import SwiftUI

struct ContentRow: View {
    let title: String
    let description: String
    let symbol: String
    let height: CGFloat
    
    var body: some View {
        HStack {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(.secondary)
                .frame(width: 50)
            
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.bold)
                
                Text(description)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
            }
        }
        .frame(height: height)
    }
}

public struct ContentNavigation: View {
    let title: String
    let contentItems: [ContentItem]
    let rowHeight: CGFloat
    public init(title: String, contentItems: [ContentItem], rowHiehgt: CGFloat = 70) {
        self.title = title
        self.contentItems = contentItems
        self.rowHeight = rowHiehgt
    }
    
    public var body: some View {
        NavigationSplitView {
            List(contentItems) {
                contentItem in
                NavigationLink {
                    contentItem.content()
                } label: {
                    ContentRow(
                        title: contentItem.title,
                        description: contentItem.description,
                        symbol: contentItem.symbol,
                        height: rowHeight)
                }
            }
            .navigationTitle(title)
        } detail: {
            Text("Select a menu")
        }
    }
}
