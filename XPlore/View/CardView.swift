import SwiftUI

struct CardView: View, Identifiable {
    //MARK: - PROPERTIES
    let id = UUID()
    var xplore: Destination
    
    var body: some View {
        Image(xplore.image)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: 0, maxWidth: .infinity)
            .overlay(
                VStack(alignment: .center, spacing: 12, content: {
                    Text(xplore.place.uppercased())
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 1)
                        .padding(.horizontal, 18)
                        .padding(.vertical, 4)
                        .overlay(
                            Rectangle()
                                .fill(Color.white)
                                .frame(height: 1),
                            alignment: .bottom
                        )
                    Text(xplore.country.uppercased())
                        .foregroundColor(Color.black)
                        .font(.footnote)
                        .fontWeight(.bold)
                        .frame(minWidth: 85)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(
                            Capsule().fill(Color.white)
                        )
                    
                })
                .frame(minWidth: 280)
                .padding(.bottom, 50),
                alignment: .bottom
            )
    }
}

#Preview {
    CardView(xplore: xploreData[0])
        .previewLayout(.fixed(width: 375, height: 80))
}
