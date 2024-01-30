import SwiftUI

struct GuideComponent: View {
    //MARK: - PROPERTIES
    var title: String
    var subtitle: String
    var description: String
    var icon: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(Color.pink)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(title.uppercased())
                        .font(.title)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Text(subtitle.uppercased())
                        .font(.footnote)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.pink)
                }
                
                Divider().padding(.bottom, 4)
                
                Text(description)
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

#Preview {
    GuideComponent(title: "title", subtitle: "Swipe Right", description: "This is a placeholder sentence. This is a placeholder sentence. This is a placeholder sentence.", icon: "heart.circle")
        .previewLayout(.sizeThatFits)
}
